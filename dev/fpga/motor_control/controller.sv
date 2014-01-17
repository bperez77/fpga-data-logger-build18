module controller
    // Default duty value for the servo, Frequency of your clock, 
    // Interval of time between transmission in milliseconds
    #(parameter SERVO_DEFAULT=9, CLOCK_FREQ=50000000, TRANSMISSION_SPEED=50)
    (input  logic data_ready, clk, clr,
     input  logic load_front, load_rear, load_servo_out,    // Comes from the Pulse Width Modulator
     input  logic [7:0] data,
     output logic [6:0] rear_motor, front_motor, servo);    // Goes to the Pulse Width Modulators

     logic load_motor, load_servo, load_servo_pwm;
     logic clr_rear, clr_front, clr_servo, clr_timeout;
     logic clr_count, timeout, packet_missed;
     logic [6:0] motor_out, servo_out, servo_control;
     logic [$clog2(LIMIT)-1:0] clock_count;
     logic [2:0] packet_count;

     // Registers to store the input from the xbee
     assign load_motor = ~data[7] & data_ready;
     pipo_reg #(7) motor_reg(.D(data[6:0]), .clk(clk), .clr(clr), .load(load_motor),
                              .Q(motor_out));
     assign load_servo = data[7] & data_ready;
     pipo_reg #(7) servo_reg(.D(data[6:0]), .clk(clk), .clr(clr), .load(load_servo),
                             .Q(servo_out));

     // Registers to hold the duty cycles for the two motors and servos
     pipo_reg #(7) rear_reg(.D(motor_out), .clk(clk), .clr(clr_rear), .load(load_rear),
                            .Q(rear_motor));
     pipo_reg #(7) front_reg(.D(motor_out), .clk(clk), .clr(clr_front), .load(load_front),
                             .Q(front_motor));
     assign load_servo_pwm = clr_servo | load_servo_out;
     assign servo_control = (clr_servo) ? SERVO_DEFAULT : servo_out; 
     pipo_reg #(7) servo_out_reg(.D(servo_control), .clk(clk), .clr(1'b0), .load(load_servo_pwm),
                                 .Q(servo));

     // Counter to check for connection timeout
     localparam LIMIT = CLOCK_FREQ / TRANSMISSION_SPEED;
     counter #($clog2(LIMIT)) timeout_count(.en(1'b1), .clr(clr_count), .clk(clk), 
                                            .Q(clock_count));
     assign packet_missed = clock_count == LIMIT;
     assign clr_count = packet_missed | clr_timeout | clr | data_ready;
     assign clr_packet = clr_timeout | clr | data_ready;
     counter #(3) packet_time(.en(packet_missed), .clr(clr_packet), .clk(clk),
                              .Q(packet_count));
     assign timeout = packet_count == 3'd4;
                             
     // Control FSM
     control_FSM control(.clk(clk), .rst(clr), .data_ready(data_ready), .timeout(timeout),
                         .clr_timeout(clr_timeout), .clr_rear(clr_rear), .clr_front(clr_front), .clr_servo(clr_servo));


endmodule: controller

module control_FSM
    (input  logic clk, rst, data_ready, timeout,
     output logic clr_timeout, clr_rear, clr_front, clr_servo);

    enum logic [1:0] {WAIT = 1'b0, OFF = 1'b1} state, next_state;

    // DFF's
    always_ff @(posedge clk)
        if (rst)
            state <= WAIT;
        else
            state <= next_state;
    
    // Next State Logic
    always_comb
        case (state)
            WAIT: next_state = (timeout) ? OFF : WAIT;
            OFF: next_state = (data_ready) ? OFF : WAIT;
        endcase

    // Output Logic
    always_comb
        case (state)
            WAIT: begin
                clr_timeout = 1'b0;
                clr_rear = 1'b0;
                clr_front = 1'b0;
                clr_servo = 1'b0;
            end        
            OFF: begin
                clr_timeout = 1'b1;
                clr_rear = 1'b1;
                clr_front = 1'b1;
                clr_servo = 1'b1;
            end
        endcase

endmodule: control_FSM     
