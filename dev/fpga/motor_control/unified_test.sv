

module pwm_testbench;
  logic clk, clr, data_ready, servo_pulse, motor_pulse,motor_reg;
  logic [7:0] control_val;

  servo_motor s1(.*);

  initial begin
   $monitor($time,, " clk=%b,clr=%b,control_val=%d,data_ready=%b, motor_pulse=%b",
                     clk, clr, control_val, data_ready, motor_pulse);
  clk = 0;
  forever #1 clk = ~clk;
  end

  initial begin
  control_val <= 8'b01011010;//90
  clr <= 1'b1;
  data_ready <= 1'b0;
  @(posedge clk);
  clr <= 1'b0;
  data_ready <= 1'b1;
  @(posedge clk);
  data_ready <= 1'b0;
  @(posedge clk);
  control_val <= 8'b10001010;//10
  data_ready <= 1'b1;
  @(posedge clk);
  data_ready <= 1'b0;
  @(posedge clk);

  for (int i = 0; i < 5000; i++)
     @(posedge clk);

  control_val <= 8'b00110010;//50;
  data_ready <= 1'b1;
  @(posedge clk);
  data_ready <= 1'b0;
  @(posedge clk);
  control_val <= 8'b10110010;//50;
  data_ready <= 1'b1;
  @(posedge clk);
  data_ready <= 1'b0;
  @(posedge clk); 
  for (int i = 0; i < 5000; i++)
     @(posedge clk);

  control_val <= 8'b00001010;//10
  data_ready <= 1'b1;
  @(posedge clk);
  data_ready <= 1'b0;
  @(posedge clk);
  control_val <= 8'b11011010;//90;
  data_ready <= 1'b1;
  @(posedge clk);
  data_ready <= 1'b0;
  @(posedge clk);

  for (int i = 0; i < 5000; i++)
    @(posedge clk);


  $finish;
  end

endmodule: pwm_testbench
