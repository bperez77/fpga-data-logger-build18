//PWM Controller SystemVerilog description

module pwm
  #(parameter FREQ = 17'd100_000, FREQ_BITS = 17)
   (input logic [6:0] duty_cycle,
    input logic en, clk, clr,
    output logic out,
    output logic [FREQ_BITS-1:0] clock_count,
    output logic [6:0] segments);

   logic seg_inc; 
   logic [6:0] dc_out; 
   //logic [6:0] segments;
   //logic [FREQ_BITS-1:0] clock_count;
   
   assign seg_inc = (clock_count == FREQ);

   pipo_reg #(7) dc(.D(duty_cycle), .Q(dc_out), .clk(clk), .clr(clr),.load(en));

   limit_counter #(FREQ_BITS) clock_counts(.en(1'b1), .Q(clock_count), 
                                         .clk(clk), .clr(clr),.limit(FREQ));

   limit_counter #(7) seg_counts(.en(seg_inc), .Q(segments), .clk(clk), .clr(clr), .limit(7'd100));

   assign out = dc_out > segments;  

endmodule: pwm
