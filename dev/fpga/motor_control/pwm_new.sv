module pwm
  #(parameter CLOCK = 50000000, WIDTH = 8)
   (input logic [WIDTH-1:0] duty_cycle, clr, clk, 
    output logic pwm);

   localparam CHUNK_SIZE = CLOCK / (2**WIDTH);
   localparam MAX_CHUNKS = 2**WIDTH-1;
   
   logic [$clog2(CLOCK)-1:0] clocks;
   logic [WIDTH-1:0] 	     chunk_count, dc;
   logic 		     chunk, dc_load, high;

   pipo_reg #(.WIDTH(WIDTH)) dc_storage(.D(duty_cycle), .Q(dc), .clk(clk), .clr(clr), .load(dc_load));
   
   counter #(.WIDTH($clog2(CLOCK))) clk_cnt(.en(1'b1), .clr(chunk | clr), .clk(clk), .Q(clocks));

   counter #(.WIDTH(WIDTH)) chnk_cnt(.en(chunk), .clr(clr), .clk(clk), .Q(chunk_count));

   assign chunk = (clocks == CHUNK_SIZE);
   assign pwm = (chunk_count < dc);
   assign dc_load = (chunk_count == MAX_CHUNKS);
   
endmodule: pwm


   

				      