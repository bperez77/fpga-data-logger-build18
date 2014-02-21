module chip_interface
  (input  logic CLOCK_50, 
   input  logic KEY0,
	input  logic GPIO_10,
   output logic [7:0] LED,
	output logic GPIO_00);
	
   logic 	data_ready, new_data, KEY_0;
   logic [7:0] 	data, data_tmp;
	
   uart #(.CLOCK(50000000)) serial(.clk(CLOCK_50), .data_in(data), .data_out(data_tmp), .rx(GPIO_10), .tx(GPIO_00), 
				                       .data_ready(data_ready), .new_data(new_data), .rst(KEY_0));

   assign KEY_0 = ~KEY0;											  
											  
	assign data_tmp = data;
	assign new_data = data_ready;
   assign LED = {GPIO_00, GPIO_10, KEY_0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};

endmodule: chip_interface
