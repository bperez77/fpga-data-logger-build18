module ADC_RTL
  (input logic CLOCK_50, 
   input logic [1:0] KEY,
   input logic tx_busy,
   output logic new_data,
   output logic [7:0] data_in);
   


  logic ADC_SADDR, ADC_CS_N, ADC_SCLK, ADC_SDAT;
  logic       iGO, iRST;
  logic [2:0] ch_sel;
  logic [3:0] m_cont;
  logic [11:0] val;
  logic wSPI_CLK, wSPI_CLK_n;
 
  SPIPLL   u1(.inclk0(CLOCK_50),.c0(wSPI_CLK),.c1(wSPI_CLK_n));
 
  ADC_CTRL a1(.iRST(iRST),.iCLK(wSPI_CLK), .iCLK_n(wSPI_CLK_n), .iGO(iGO), .iCH(ch_sel), .oLED(), .oDIN(ADC_SADDR), .oCS_n(ADC_CS_N), .oSCLK(ADC_SCLK), .iDOUT(ADC_SDAT), .val(val), .m_out(m_cont));
  
  control_fsm  c1(.reset_N(KEY[0]), .clk(CLOCK_50),.*); 

endmodule: ADC_RTL



module control_fsm
  (input logic reset_N, clk,tx_busy, 
   input logic [3:0] m_cont,
   input logic [11:0] val,
   output logic [7:0] data_in,
   output logic       new_data, 
   output logic iGO, iRST,
   output logic [2:0] ch_sel);

  enum logic [4:0] {START = 5'b00000, CH0 = 5'b00001, TRANSMIT01 = 5'b00010, TRANSMIT02 = 5'b00011,TRANSMIT03=5'b00100,TRANSMIT04 = 5'b00101,
                                      CH1 = 5'b00110, TRANSMIT11 = 5'b00111, TRANSMIT12 = 5'b01000,TRANSMIT13=5'b01001,TRANSMIT14 = 5'b01010,
                                      CH2 = 5'b01011, TRANSMIT21 = 5'b01100, TRANSMIT22 = 5'b01101,TRANSMIT23=5'b01110,TRANSMIT24 = 5'b01111,
                                      CH3 = 5'b10000, TRANSMIT31 = 5'b10001, TRANSMIT32 = 5'b10010,TRANSMIT33=5'b10011,TRANSMIT34 = 5'b10100}state,nextstate; 
                    

  always_comb begin 
    data_in = 'd0;
    unique case (state)
      START: begin
             iRST = 1'b1;
             iGO = 1'b0;
             ch_sel = 3'b000;
             nextstate = CH0;
             new_data = 1'b0;
             end

      CH0: begin
           iRST = 1'b0;
           iGO = ((m_cont) == 'd15)?1'b1:1'b0;
           ch_sel = 3'b000;
           new_data = 1'b0;
           nextstate = ((m_cont) == 'd15)?TRANSMIT01:CH0;
           end
      
      TRANSMIT01: begin
                  iRST = 1'b0;
                  iGO = 1'b0;
                  ch_sel = 3'b000;
                  new_data = 1'b1;
                  data_in = {2'b00,val[11:6]};//motor is 00
                  nextstate = TRANSMIT02;
                  end
      
      TRANSMIT02: begin
                  iRST = 1'b0;
                  iGO = 1'b0;
                  ch_sel = 3'b000;
                  new_data = 1'b0;
                  data_in = {2'b00,val[11:6]};//motor is 00
                  nextstate = (~tx_busy)?TRANSMIT03:TRANSMIT02;
                  end  

      TRANSMIT03: begin
                  iRST = 1'b0;
                  iGO = 1'b0;
                  ch_sel = 3'b000;
                  new_data = 1'b1;
                  data_in = {2'b00,val[5:0]};//motor is 00
                  nextstate = TRANSMIT04;
                  end
      
      TRANSMIT04: begin
                  iRST = 1'b0;
                  iGO = 1'b0;
                  ch_sel = 3'b000;
                  new_data = 1'b0;
                  data_in = {2'b00,val[5:0]};//motor is 00
                  nextstate = (~tx_busy)?CH1:TRANSMIT04;
                  end

      CH1: begin
           iRST = 1'b0;
           iGO = ((m_cont) == 'd15)?1'b1:1'b0;
           ch_sel = 3'b001;
           new_data = 1'b0;
           nextstate = ((m_cont) == 'd15)?TRANSMIT11:CH1;
           end

      TRANSMIT11: begin
                  iRST = 1'b0;
                  iGO = 1'b0;
                  ch_sel = 3'b001;
                  new_data = 1'b1;
                  data_in = {2'b01,val[11:6]};//motor is 01
                  nextstate = TRANSMIT12;
                  end

      TRANSMIT12: begin
                  iRST = 1'b0;
                  iGO = 1'b0;
                  ch_sel = 3'b001;
                  new_data = 1'b0;
                  data_in = {2'b01,val[11:6]};//motor is 01
                  nextstate = (~tx_busy)?TRANSMIT13:TRANSMIT12;
                  end

      TRANSMIT13: begin
                  iRST = 1'b0;
                  iGO = 1'b0;
                  ch_sel = 3'b001;
                  new_data = 1'b1;
                  data_in = {2'b01,val[5:0]};//motor is 01
                  nextstate = TRANSMIT14;
                  end

      TRANSMIT14: begin
                  iRST = 1'b0;
                  iGO = 1'b0;
                  ch_sel = 3'b001;
                  new_data = 1'b0;
                  data_in = {2'b01,val[5:0]};//motor is 01
                  nextstate = (~tx_busy)?CH2:TRANSMIT14;
                  end

      CH2: begin
           iRST = 1'b0;
           iGO = ((m_cont) == 'd15)?1'b1:1'b0;
           ch_sel = 3'b010;
           new_data = 1'b0;
           nextstate = ((m_cont) == 'd15)?TRANSMIT21:CH2;
           end

      TRANSMIT21: begin
                  iRST = 1'b0;
                  iGO = 1'b0;
                  ch_sel = 3'b010;
                  new_data = 1'b1;
                  data_in = {2'b10,val[11:6]};//motor is 10
                  nextstate = TRANSMIT22;
                  end

      TRANSMIT22: begin
                  iRST = 1'b0;
                  iGO = 1'b0;
                  ch_sel = 3'b010;
                  new_data = 1'b0;
                  data_in = {2'b10,val[11:6]};//motor is 10
                  nextstate = (~tx_busy)?TRANSMIT23:TRANSMIT22;
                  end

      TRANSMIT23: begin
                  iRST = 1'b0;
                  iGO = 1'b0;
                  ch_sel = 3'b010;
                  new_data = 1'b1;
                  data_in = {2'b10,val[5:0]};//motor is 10
                  nextstate = TRANSMIT24;
                  end
       
      TRANSMIT24: begin
                  iRST = 1'b0;
                  iGO = 1'b0;
                  ch_sel = 3'b010;
                  new_data = 1'b0;
                  data_in = {2'b10,val[5:0]};//motor is 10
                  nextstate = (~tx_busy)?CH3:TRANSMIT24;
                  end
       CH3: begin
           iRST = 1'b0;
           iGO = ((m_cont) == 'd15)?1'b1:1'b0;
           ch_sel = 3'b011;
           new_data = 1'b0;
           nextstate = ((m_cont) == 'd15)?TRANSMIT31:CH3;
           end

       TRANSMIT31: begin
                  iRST = 1'b0;
                  iGO = 1'b0;
                  ch_sel = 3'b011;
                  new_data = 1'b1;
                  data_in = {2'b11,val[11:6]};//accl is 11
                  nextstate = TRANSMIT32;
                  end

      TRANSMIT32: begin
                  iRST = 1'b0;
                  iGO = 1'b0;
                  ch_sel = 3'b011;
                  new_data = 1'b0;
                  data_in = {2'b11,val[11:6]};//accl is 11
                  nextstate = (~tx_busy)?TRANSMIT33:TRANSMIT32;
                  end

      TRANSMIT33: begin
                  iRST = 1'b0;
                  iGO = 1'b0;
                  ch_sel = 3'b011;
                  new_data = 1'b1;
                  data_in = {2'b11,val[5:0]};//accl is 11
                  nextstate = TRANSMIT34;
                  end

      TRANSMIT34: begin
                  iRST = 1'b0;
                  iGO = 1'b0;
                  ch_sel = 3'b011;
                  new_data = 1'b0;
                  data_in = {2'b11,val[5:0]};//accl is 11
                  nextstate = (~tx_busy)?CH0:TRANSMIT34;
                  end
    endcase    
    end

  always_ff @(posedge clk, negedge reset_N)
    if (~reset_N) state <= START;
    else state <= nextstate;
  

endmodule: control_fsm
