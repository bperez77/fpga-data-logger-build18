//FPGA UART

//default = 9600 baud, 8 data bits, no parity, 1 stop bit
//No other configurations supported yet
module uart
  #(parameter CLOCK = 50000000, 
    BAUD = 9600, DATA = 8, STOP = 1)
   (input logic rx, new_data, clk, rst,
    input logic [DATA-1:0]  data_in,
    output logic [DATA-1:0] data_out,
    output logic       tx, data_ready);

   //Datapath internal connections
   logic [DATA-1:0] 	       data_sent;	
   logic [DATA+1:0] 	       data_rec, tx_status; 	       
   
   //Status Signals
   logic 	read_align, read, trans, rx_done, tx_done, error;
   
   //Control Signals
   logic 	load_tx, load_rx2, load_rx, shift_tx, tx_out,
		rx_clr, tx_clr, start_tx, start_rx; 

   logic [$clog2(SYNC)-1:0] count_t, count_r;
   
   //Timing parameters
   localparam SYNC = (CLOCK / BAUD) - 1;
   localparam ALIGN = SYNC / 2;
   
   //Datapath components
   pipo_reg #(.WIDTH(DATA)) received(.D(data_rec[8:1]), .Q(data_out), 
				     .load(load_rx2), .clr(rst), .clk(clk));
   sipo_reg #(.WIDTH(DATA+2)) rxdata(.d_in(rx), .Q(data_rec), .en(load_rx), .clr(rx_clr | rst), .clk(clk));
   piso_reg #(.WIDTH(DATA+2)) txdata(.D({1'b1, data_in, 1'b0}), .Q(tx_status), .load(load_tx), 
				     .shift(shift_tx), .clr(tx_clr | rst), .clk(clk), .out(tx_out));
   
   mux tx_sel(.sel(tx_clr), .D0(tx_out), .D1(1'b1), .Y(tx)); //Hold tx line high in between packets

   //FSM status signal hardware
   counter #(.WIDTH($clog2(SYNC))) transmit(.en(1'b1), .clr(start_tx), .clk(clk), .Q(count_t));
   counter #(.WIDTH($clog2(SYNC))) receive(.en(1'b1), .clr(start_rx), .clk(clk), .Q(count_r));

   assign read_align = (count_r == ALIGN);
   assign read = (count_r == SYNC);
   assign trans = (count_t == SYNC);
   assign rx_done = (data_rec[9] & ~data_rec[0]);
   assign tx_done = (tx_status == 'd0);
   assign error = (data_rec[9] & data_rec[0]); 
   
   //Control FSM
   rx_control rx_ctrl(.*);
   tx_control tx_ctrl(.*);

endmodule: uart


module rx_control
  (input logic read_align, read, rx_done, clk, rx, rst, error, 
   output logic data_ready, load_rx, load_rx2, rx_clr, start_rx);

   enum 	logic [2:0] {WAIT=3'd0, START=3'd1, SYNC=3'd2, 
			     READ=3'd3, PAUSE=3'd4, DONE=3'd5} current_state, next_state;

   //next state logic
   always_comb begin
      case(current_state)
	WAIT: next_state = (~rx) ? START : WAIT; //Start bit is asserted low
	START: next_state = SYNC;
	SYNC: next_state = (read_align) ? READ : SYNC;
	READ: next_state = PAUSE;
	PAUSE: begin
	   if (rx_done)
	     next_state = DONE;
	   else if(error) //No stop bit, throw the packet out and look for a new one
	     next_state = WAIT;
	   else if(read)
	     next_state = READ;	   
	   else
	     next_state = PAUSE;
	end
	DONE: next_state = WAIT;
	default: next_state = WAIT;
      endcase // case (current_state)
   end

   //output logic
   always_comb begin
      data_ready = 1'b0;
      load_rx = 1'b0;
      load_rx2 = 1'b0;
      rx_clr = 1'b0;
      start_rx = 1'b0;
      case(current_state)
	WAIT: rx_clr = 1'b1;
	START: start_rx = 1'b1;
	SYNC: ; //Do nothing
	READ: begin 
	   load_rx = 1'b1;
	   start_rx = 1'b1;
	end
	PAUSE: ; //Do nothing
	DONE: begin 
	   load_rx2 = 1'b1; 
	   data_ready = 1'b1;
	end
	endcase // case (current_state)
   end // always_comb begin
   
   //synchronous logic
   always_ff @(posedge clk) begin
      if(~rst)
	current_state <= next_state;
      else
	current_state <= WAIT;
   end
   
endmodule: rx_control
   

//control fsm for TX line
module tx_control
   (input logic trans, tx_done, new_data, clk, rst,
    output logic load_tx, shift_tx, tx_clr, start_tx);

   enum 	 logic [1:0] {WAIT=2'd0, LOAD=2'd1, SHIFT=2'd2, PAUSE=2'd3} next_state, current_state;

   //next state logic
   always_comb begin
      case(current_state)
	WAIT: next_state = (new_data) ? LOAD : WAIT;
	LOAD: next_state = PAUSE;
	SHIFT: next_state = PAUSE;
	PAUSE: begin
	   if (tx_done) 
	     next_state = WAIT;
	   else if (trans) 
	     next_state = SHIFT;
	   else 
	     next_state = PAUSE;
	end
	default: next_state = WAIT;
      endcase // case (current_state)
   end // always_comb begin

   //output logic
   always_comb begin
      tx_clr = 1'b0;
      load_tx = 1'b0;
      shift_tx = 1'b0;
      start_tx = 1'b0;
      case(current_state)
	WAIT: begin
	   tx_clr = 1'b1;
	end
	LOAD: begin 
	   load_tx = 1'b1;
	   start_tx = 1'b1;
	end
	SHIFT: begin
	   shift_tx = 1'b1;
	   start_tx = 1'b1;
	end
	PAUSE: ;
      endcase // case (current_state)
   end // always_comb begin

   //State storage
   always_ff @(posedge clk) begin
      if(~rst)
	current_state <= next_state;
      else
	current_state <= WAIT;
   end
   		  
endmodule: tx_control
  
