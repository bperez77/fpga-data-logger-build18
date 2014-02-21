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

 
