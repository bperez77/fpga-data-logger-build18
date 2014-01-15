

module pwm_testbench;
  logic clk, clr, en, out;
  logic [6:0] duty_cycle;

  pwm #(7'd10,7) p1(.*);

  initial begin
  $monitor($time, " clock_count=%d, clr=%b, en=%b, duty_cycle=%d, segments=%d, out=%b",
                  p1.clock_count, clr, en, duty_cycle, p1.segments, out);
  clk = 0;
  forever #1 clk = ~clk;
  end

  initial begin
  duty_cycle = 7'd90;
  en <= 0;
  clr <= 1;
  @(posedge clk);
  clr <= 0;
  en <= 1;
  @(posedge clk);
  en <= 0;
  @(posedge clk);
  #5000;
  $finish;
  end

endmodule: pwm_testbench
