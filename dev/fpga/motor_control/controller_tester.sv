module controller_tester();

    logic data_ready, clk, clr;
    logic load_front, load_rear, load_servo_out;
    logic [7:0] data;
    logic [6:0] rear_motor, front_motor, servo;

    controller control(.*);

    initial begin
        $monitor($stime,, "rear_motor=%d, front_motor=%d, servo=%d",
                 rear_motor, front_motor, servo);

        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        data <= 8'd0;
        clr <= 1'b1;
        @(posedge clk);
        clr <= 1'b0;
        @(posedge clk);
        data_ready <= 1'b1;
        data <= 8'b10001000;      // Load 8 into the servo controller
        @(posedge clk);
        data_ready <= 1'b0;
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);             // Wait a few clocks before loading
        load_servo_out <= 1'b1;
        @(posedge clk);
        load_servo_out <= 1'b0;
        @(posedge clk);
        data_ready <= 1'b1;
        data <= 8'b01000000;     // Load 64 into the motor controller
        @(posedge clk);
        data_ready <= 1'b0;
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        load_rear <= 1'b1;         // Load rear motor controller
        @(posedge clk);
        load_rear <= 1'b0;
        load_front <= 1'b1;
        @(posedge clk);
        load_front <= 1'b0;
        @(posedge clk);
        for (int i = 0; i < 4000000; i++)   // Test the timefault fault-tolerance
            @(posedge clk);
        @(posedge clk);                     // Expect a system reset here
        @(posedge clk);
        @(posedge clk);
        #4 $finish;
    end

endmodule: controller_tester    

