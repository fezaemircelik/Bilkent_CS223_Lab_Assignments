`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2022 17:25:30
// Design Name: 
// Module Name: TWOtoONEmux
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


module TWOtoONEmux(y,a,b,s1);
input logic a,b,s1;
output logic y;
assign y = (~s1&a)|(s1&b);
endmodule
