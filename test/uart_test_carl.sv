module test_bench();
   logic       tx, data_ready;
   logic [7:0] data_out;
   logic       rx, new_data;
   logic [7:0] data_in, tx_status;
   logic       clk, rst;
   
   uart serial(.*);
   assign rx = tx;
   
   initial begin
      clk = 1'b0;
      forever #1 clk = ~clk;
   end

   initial begin
      $monitor($time,, "tx_status=%b, tx=%b, cs=%s, ns=%s, load_rx=%b, load_rx2=%b, rx_done=%b, rx=%b, rx_inc=%b, data_out=%b",
	       serial.tx_status, tx, serial.rx_ctrl.current_state, serial.rx_ctrl.next_state, serial.rx_ctrl.load_rx, serial.rx_ctrl.load_rx2, serial.rx_ctrl.rx_done, rx, serial.data_rec, data_out);
      rst <= 1'b1;
      new_data <= 1'b0;
      @(posedge clk);
      rst <= 1'b0;
      @(posedge clk);
      data_in <= 8'd6;
      @(posedge clk);
      @(posedge clk);
      new_data <= 1'b1;
      @(posedge clk);
      @(posedge clk);
      new_data <= 1'b0;
      for(int i = 0; i < 1000000; i++)
	@(posedge clk);
      @(posedge clk);
      data_in <= 8'd110;
      @(posedge clk);
      new_data <= 1'b1;
      @(posedge clk);
      @(posedge clk);
      new_data <= 1'b0;
      @(posedge clk);
      data_in <= 8'd99;
      @(posedge clk);
      for (int i = 0; i < 1000000; i++)
	@(posedge clk);
      @(posedge clk);
      #3 $finish;
   end
      
      
   
endmodule: test_bench

   

   