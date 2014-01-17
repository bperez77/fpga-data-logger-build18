module controller
    (input  logic data_ready, clk, clr,
     input  logic [7:0] command,
     output logic [7:0] rear_motor, front_motor, servo);

     logic load_motor, load_servo;
     logic clr_rear, clr_front, clr_servo;
     logic load_rear, load_front, load_servo;
     logic [7:0] motor_out, servo_out;

     // Registers to store the input from the xbee
     assign load_motor = ~data[8] & data_ready;
     pipo_reg #(7) motor_reg(.D(data[7:0]), .clk(clk), .clr(clr), .load(load_motor),
                              .Q(motor_out));
     assign load_servo = data[8] & data_ready;
     pipo_reg #(7) servo_reg(.D(data[7:0]), .clk(clk), .clr(clr), .load(load_servo),
                             .Q(servo_out));

     // Registers to hold the duty cycles for the two motors and servos
     pipo_reg #(7) rear_reg(.D(motor_out), clk(clk), .clr(clr_rear), .load(load_rear),
                            .Q(rear_motor))
     pipo_reg #(7) front_reg(.D(motor_out), .clk(clk), .clr(clr_front), .load(load_front),
                             .Q(front_motor));
     pipo_reg #(7) servo_out_reg(.D(servo_out), .clk(clk), .clr(clr_servo), .load(load_servo),
                                 .Q(servo));
                             
     // Control FSM
     control_FSM control(.clk(clk), .rst(clr), 


endmodule: control_FSM

module control_FSM
    (input  logic clk, rst, data_ready, cmd_spec,
     output logic load_rear, load_front, load_servo, 
                   clr_rear, clr_front, clr_servo);

    enum logic [1:0] {WAIT = 2'd0, CHECK=2'd1, LOAD=2'd2} state, next_state;

    // DFF's
    always_ff @(posedge clk)
        if (rst)
            state <= WAIT;
        else
            state <= next_state;

    // Next State Logic
    always_comb
        case (state)
            WAIT: next_state = (data_ready & cmd_spec) ? (CHECK_SERVO) : (data_ready) ? CHECK_MOTOR : WAIT
            CHECK: next_state = 
            LOAD: next_state = WAIT;
    always_comb begin
        load_rear = 1'b0;
        load_front = 1'b0;
        load_servo = 1'b0;
        clr_rear = 1'b0;
        clr_front = 1'b0;
        clr_servo = 1'b0;
        case (state)
            

endmodule: control_FSM     
