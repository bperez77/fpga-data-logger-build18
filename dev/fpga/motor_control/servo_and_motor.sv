

module servo_motor
  (input logic [7:0] control_val,
   input logic clk, clr, data_ready,
   output logic motor_reg,
   output logic servo_pulse, motor_pulse);

   logic [16:0] clock_count, reg_input;
   logic [16:0] motor_duty, servo_duty;
   logic update_servo;
   logic servo_reg;
 
   assign servo_reg = update_servo & data_ready;
   assign motor_reg = ~update_servo & data_ready;
   assign update_servo = control_val[7];
   
   assign reg_input = {10'b0,control_val[6:0]};
   
   pipo_reg #(17) motor(.D(reg_input), .Q(motor_duty), .load(motor_reg),.*);

   pipo_reg #(17) servo(.D(reg_input), .Q(servo_duty), .load(servo_reg),.*);


   pwm #(/**17'd50000, 17'd500**/17'd500,17'd5) dc_motor(.duty_cycle(motor_duty), .pwm_pulse(motor_pulse), .*);
   pwm #(/**17'd100000, 17'd1000**/17'd1000,17'd10) servo_controls(.duty_cycle(servo_duty), .pwm_pulse(servo_pulse), .*); 

endmodule: servo_motor
   



