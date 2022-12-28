`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2022 12:03:19
// Design Name: 
// Module Name: ONEtoTWOdecoder
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


module ONEtoTWOdecoder(y0,y1,a,enable);
    input logic a, enable;
    output logic y0, y1;
    
    assign y0 = a & enable;
    assign y1 = ~a & enable;
endmodule
