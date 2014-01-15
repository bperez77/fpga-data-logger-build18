

module pwm_testbench;
  logic clk, clr, en, out;
  logic [6:0] duty_cycle;
  logic [6:0] clock_count;
  logic [6:0] segments;

  pwm p1(.*);

  initial begin
  $monitor($time, " clock_count=%d, clr=%b, en=%b, duty_cycle=%d, segments=%d, out=%b",
                  clock_count, clr, en, duty_cycle, segments, out);
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
  #1000;
  $finish;
  end

endmodule: pwm_testbench
