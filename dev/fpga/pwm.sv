//PWM Controller SystemVerilog description

module pwm
  #(PARAMETER FREQ = 100)
   (input logic [7:0] duty_cycle,
    input logic en, clk, clr,
    output logic out);

   logic [7:0] 	 dc_out, segments;
   
   pipo_reg dc(.D(duty_cycle), .Q(dc_out), .clk(clk), .clr(clr));
   counter seg_counts(.en(), .Q(segments), .clk(clk), .clr(clr));
   counter clock_counts(.en(1'b1), 


   assign out = dc_out > segments;
   


endmodule: pwm
