module pwm
  #(parameter CLOCK = 50000000, WIDTH = 8, FREQ = 100)
   (input logic [WIDTH-1:0] duty_cycle, 
    input logic clr, clk, 
    output logic pwm, new_dc);

   localparam PULSE_SIZE = CLOCK / FREQ;
   localparam CHUNK_SIZE = PULSE_SIZE / (2**WIDTH);
   localparam MAX_CHUNKS = 2**WIDTH-1;
   
   logic [$clog2(CHUNK_SIZE)-1:0] clocks;
   logic [WIDTH-1:0] 	     chunk_count;
   logic 		     chunk;

   limit_counter #(.WIDTH($clog2(CHUNK_SIZE)), .LIMIT(CHUNK_SIZE)) clk_cnt(.en(1'b1), .clr(clr), .clk(clk), .Q(clocks));

   limit_counter #(.WIDTH(WIDTH), .LIMIT(MAX_CHUNKS)) chnk_cnt(.en(chunk), .clr(clr), .clk(clk), .Q(chunk_count));

   assign chunk = (clocks == CHUNK_SIZE-1);
   assign pwm = (chunk_count < duty_cycle);
   assign new_dc = chunk_count == MAX_CHUNKS - 2;
   
endmodule: pwm

