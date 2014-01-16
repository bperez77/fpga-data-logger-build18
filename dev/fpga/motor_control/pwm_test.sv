

module pwm_testbench;
  logic clk, clr, load, en, pwm_pulse;
  logic [15:0] duty_cycle;

  pwm #(16'd500, 16'd5) p2(.*);

  initial begin
   $monitor($time, " clock_count=%d, clr=%b, duty_cycle=%d, pwm_pulse=%b",
                  p2.clock_count, clr,  duty_cycle, pwm_pulse);
  clk = 0;
  forever #1 clk = ~clk;
  end

  initial begin
  duty_cycle = 7'd90;
  clr <= 1'd1;
  en <= 1'd0;
  @(posedge clk);
  clr <= 1'd0;
  en <= 1'd1;
  @(posedge clk);
  en <= 1'd0;
  @(posedge clk);
  #5000;
  duty_cycle <= 7'd50;
  en <= 1'b1;
  @(posedge clk);
  en <= 1'b0;
  @(posedge clk);
  #5000;
  duty_cycle <= 7'd10;
  en <= 1'b1;
  @(posedge clk);
  en <= 1'b0;
  @(posedge clk);
  #5000;
  duty_cycle <= 7'd70;
  en <= 1'b1;
  @(posedge clk);
  en <= 1'b0;
  @(posedge clk); 
  #5000;
  $finish;
  end

endmodule: pwm_testbench
