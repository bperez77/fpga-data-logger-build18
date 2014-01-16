
module pwm
  #(parameter PVAL = 17'd50000, DIVVAL = 17'd500)
  (input logic [16:0] duty_cycle,
   input logic clk, clr,
   output logic pwm_pulse);

  //refresh every 1ms, so p = 0.001*50MHz = 50000
  //division = clock_freq/100 = 500

  logic [16:0] clock_count;

  limit_counter #(17) c1(.clk(clk), .clr(clr), .Q(clock_count), .limit(PVAL),.en(1'b1));

  assign pwm_pulse = (clock_count <= duty_cycle*DIVVAL)? 1'b1:1'b0;

endmodule: pwm
