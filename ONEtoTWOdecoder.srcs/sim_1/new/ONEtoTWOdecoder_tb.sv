`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2022 12:08:12
// Design Name: 
// Module Name: ONEtoTWOdecoder_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ONEtoTWOdecoder_tb();
    logic y0,y1,a,enable;
    ONEtoTWOdecoder dut(y0,y1,a,enable);
    initial begin
    a=0; enable=0;  #100;
    a=0; enable=1;  #100;
    a=1; enable=0;  #100;
    a=1; enable=1;  #100;
    end
endmodule
