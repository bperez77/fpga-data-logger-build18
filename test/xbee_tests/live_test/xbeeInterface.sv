`define TX GPIO_00
`define RX GPIO_01

module chip_interface
  (input logic CLOCK_50, RX, KEY0,
   output logic [7:0] LED,
   output logic TX);

   logic 	data_ready, data_received;
   logic [7:0] 	data;

   uart #(.CLOCK(50000000)) serial(.clk(CLOCK_50), .data_in(data), .data_out(data), .rx(RX), .tx(TX), 
				   .data_ready(data_ready), .new_data(new_data), .rst(KEY0));

   assign new_data = data_ready;
   assign LED = data;

endmodule: chip_interface
