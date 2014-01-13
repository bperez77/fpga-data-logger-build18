//FPGA UART

//default = 9600 baud, 8 data bits, no parity, 1 stop bit
//parity bits not supported yet
module uart
  #(parameter CLOCK = 150000000, 
    BAUD = 9600, DATA = 8, STOP = 1)
   (input logic rx, new_data, clk,
    input logic [7:0]  data_in,
    output logic [7:0] data_out,
    output logic       tx, data_ready);

   //Datapath internal connections
   logic [7:0] 	       data_sent;	
   logic [9:0] 	       data_rec, tx_status;   
   
   //Status Signals
   logic 	read_align, read, trans, rx_compl;
   
   //Control Signals
   logic 	load_tx, load_rx2, load_rx, shift_tx,
		rx_clr, tx_clr; 	
   
   //Timing parameters
   localparam SYNC = CLOCK / BAUD;
   localparam ALIGN = CB / 2;
   
   //Datapath components
   pipo_reg #(.WIDTH(DATA)) received(.D(data_rec[1:8]), .Q(data_out), .load(load_rx2), .clr(1'b0), .clk(clk));
   sipo_reg #(.WIDTH(DATA+2)) rxdata(.d_in(rx), .Q(data_rec), .en(load_rx), .clr(rx_clr), .clk(clk));
   piso_reg #(.WIDTH(DATA+2)) txdata(.D({1'b1, data_in, 1'b1}), .Q(tx_status), .load(load_tx), 
				     .shift(shift_tx), .clr(tx_clr), .clk(clk), .out(tx));

   //FSM status signal hardware
   counter #(.WIDTH($clog2(SYNC))) transmit();
   counter #(.WIDTH($clog2(SYNC))) receive();

   assign read_align = (count_r = ALIGN);
   assign read = (count_r == CB);
   assign trans = (count_t == CB);
   assign rx_compl = (data_rec[7] == 'd1);
   assign tx_done = (tx_status == 'd0);
   

endmodule: uart

//Parallel in Parallel out
module pipo_reg
  #(WIDTH = 8)
   (input logic [WIDTH-1:0] D,
    input logic load, clk, clr,
    output logic [WIDTH-1:0] Q);

   always_ff @(posedge clk) begin
      if (clr)
	Q <= WIDTH'd0;
      else if (load)
	Q <= D;
   end

endmodule: pipo_reg


//Parallel in with serial out and parallel out
module piso_reg
  #(WIDTH = 8)
   (input logic  [WIDTH-1:0] D,
    input logic  load, shift, clk, clr,
    output logic [WIDTH-1:0] Q;
    output logic out);
   

   assign out = Q[0];

   assign Q_shift = Q >> 1'd1;
   
   always_ff @(posedge clk) begin
      if (clr)
	Q <= D;
      else if (load)
	Q <= D;
      else if (shift)
	Q <= Q_shift;
   end      

endmodule: piso_reg

//Serial in Parallel out
module sipo_reg
  #(WIDTH = 8)
   (input logic  d_in, clk, clr, en
    output logic [WIDTH-1:0] Q);
   logic [WIDTH-1:0] 	     D;
   
   assign D = (Q << 1) | {WIDTH-2'd0, d_in};
   
   always_ff @(posedge clk) begin
      if (en & ~clr)
	Q <= D;
      else if (clr)
	Q <= 'b0;
   end

endmodule: sipo_reg

module counter
  #(WIDTH = 8)
   (input logic en, clr, clk,
    output logic [WIDTH-1:0] Q);
   logic [WIDTH-1:0] 	     Qup;
      
   always_ff @(posedge clk) begin
      if (clr)
	Q <= 'b0;
      else if (en)
	Q <= Qup;
   end // always_ff @ (posedge clk)

   assign Qup = Q + 1'd1;

endmodule: counter
