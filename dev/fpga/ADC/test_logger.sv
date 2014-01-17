

module ADC_RTL_TEST
  (input logic CLOCK_50,
   input logic [1:0] KEY,
   input logic tx_busy,
   input logic [11:0] val,
   input logic [3:0] m_cont,
   output logic new_data,
   output logic [7:0] data_in,
   output logic [2:0] ch_sel);



 // logic ADC_SADDR, ADC_CS_N, ADC_SCLK, ADC_SDAT;
  logic       iGO, iRST;
 // logic [2:0] ch_sel;
 // logic [3:0] m_cont;
 // logic [11:0] val;

 // ADC_CTRL a1(.iRST(iRST),.iCLK(CLOCK_50), .iCLK_n(~CLOCK_50), .iGO(iGO), .iCH(ch_sel), .oLED(), .oDIN(ADC_SADDR), .oCS_n(ADC_CS_N), .oSCLK(ADC_SCLK), .iDOUT(ADC_SDAT), .val(val), .m_out(m_cont));

  control_fsm  c1(.reset_N(KEY[0]), .clk(CLOCK_50),.*);

endmodule: ADC_RTL_TEST


module testbench;
  logic CLOCK_50, tx_busy, new_data;
  logic [1:0] KEY;
  logic [2:0] ch_sel;
  logic [7:0] data_in;
  logic [11:0] val;
  logic [3:0] m_cont;

  ADC_RTL_TEST a1(.*);

  initial begin
   $monitor($time, " reset_N=%b, tx_busy=%b, iRST=%B, iGO=%b, val=%b, data_in = %b, new_data=%b, ch_sel=%d, curr_state=%s, nextstate=%s",
                    KEY[0], tx_busy, a1.c1.iRST, a1.c1.iGO, val, data_in, new_data, ch_sel, a1.c1.state, a1.c1.nextstate);
   KEY[0] = 0;
   #1 KEY[0] = 1; 
   CLOCK_50 = 0;
   forever #1 CLOCK_50 = ~CLOCK_50;
  end

  initial begin
  val <= 12'b000011_111111;
  tx_busy <= 1'b0;
  m_cont <= 'd0;
  @(posedge CLOCK_50);
  @(posedge CLOCK_50);
  m_cont <= 'd15;
  tx_busy <= 1'b1;
  @(posedge CLOCK_50);
  @(posedge CLOCK_50);
  tx_busy <= 1'b0;
  @(posedge CLOCK_50);
  m_cont <= 'd20;
  @(posedge CLOCK_50);
  tx_busy <= 1'b1;
  @(posedge CLOCK_50);
  @(posedge CLOCK_50);
  m_cont <= 'd15;
  @(posedge CLOCK_50);
  @(posedge CLOCK_50);
  tx_busy <= 1'b0;
  @(posedge CLOCK_50);
  val <= 12'b111111_000000;
  m_cont <= 'd15;
  @(posedge CLOCK_50);
  tx_busy <= 1'b1;
  @(posedge CLOCK_50);
  tx_busy <= 1'b0;
  @(posedge CLOCK_50);
  @(posedge CLOCK_50); 
  
  $finish;
  end
  
  

endmodule:testbench
