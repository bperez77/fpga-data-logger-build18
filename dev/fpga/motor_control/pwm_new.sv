module pwm
  #(parameter CLOCK = 50000000, WIDTH = 8)
   (input logic [WIDTH-1:0] duty_cycle, clr, clk, 
    output logic pwm);

   localparam CHUNK_SIZE = CLOCK / (2**WIDTH);
   
   logic [$clog2(CLOCK)-1:0] clocks;
   logic [WIDTH-1:0] 	     chunk_count, dc;
   logic 		     chunk, dc_load, high;

   pipo_reg #(.WIDTH(WIDTH)) dc_storage(.D(duty_cycle), .Q(dc), .clk(clk), .clr(dc_clr), .load(dc_load));
   
   counter #(.WIDTH($clog2(CLOCK))) clk_cnt(.en(1'b1), .clr(clocks_clr), .clk(clk), .Q(clocks));

   counter #(.WIDTH(WIDTH)) chnk_cnt(.en(chunk), .clr(chunks_clr), .clk(clk), .Q(chunk_count));

   assign chunk = (clocks == CHUNK_SIZE);
   assign high = (chunk_count < dc);
   
endmodule: pwm

module pwm_control
  (input logic
   output logic chunks_clr, clocks_clr, dc_clr, dc_load);

   enum 	logic {START, HIGH, LOW} current_state, next_state;

   //Next state logic
   always_comb begin
      case(current_state)
	START: next_state = (high) HIGH : LOW;
	HIGH begin
	   if(


endmodule: pwm_control

   

				      