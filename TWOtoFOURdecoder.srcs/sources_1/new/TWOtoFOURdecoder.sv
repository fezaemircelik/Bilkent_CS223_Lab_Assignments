`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2022 12:24:13
// Design Name: 
// Module Name: TWOtoFOURdecoder
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


module TWOtoFOURdecoder(y0,y1,y2,y3,a0,a1,enable);
    input logic a0,a1,enable;
    output logic y0,y1,y2,y3;
    logic b0,b1;
    ONEtoTWOdecoder decoder1(b0,b1,a1,enable);
    ONEtoTWOdecoder decoder2(y3,y2,a0,b0);
    ONEtoTWOdecoder decoder3(y1,y0,a0,b1);
endmodule

module ONEtoTWOdecoder(y0,y1,a,enable);
    input logic a, enable;
    output logic y0, y1;
    
    assign y0 = a & enable;
    assign y1 = ~a & enable;
endmodule