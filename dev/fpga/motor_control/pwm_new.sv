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

module pwm_test();
   logic [7:0] duty_cycle;
   logic       clr, clk, pwm;

   initial begin
      clk = 1'b0;
      forever #5 clk = ~clk;
   end

   pwm #(.CLOCK(100000)) pulse(.*);

   initial begin
      $monitor($time,, 
	       "clocks=%d, pwm=%b, duty_cycle=%d, chunk=%b, chunk_count=%d", 
	       pulse.clocks, pwm, duty_cycle, pulse.chunk, pulse.chunk_count);
      @(posedge clk);
      clr <= 1'b1;
      duty_cycle <= 8'd128;
      @(posedge clk);
      @(posedge clk);
      clr <= 1'b0;
      @(posedge clk);
      @(posedge clk);
      for(int i = 0; i < 5000; i++)
	@(posedge clk);
      duty_cycle <= 8'd64;
      for(int i = 0; i <5000; i++)
	@(posedge clk);
      @(posedge clk);
      $display("pulse size = %d", pulse.PULSE_SIZE);
      $display("Chunk size = %d", pulse.CHUNK_SIZE);
      $display("Max chunks = %d", pulse.MAX_CHUNKS);
      #4
      $finish;
   end // initial begin

endmodule: pwm_test

      