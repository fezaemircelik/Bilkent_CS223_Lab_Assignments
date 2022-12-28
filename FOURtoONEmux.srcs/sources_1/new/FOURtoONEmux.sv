`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2022 17:38:44
// Design Name: 
// Module Name: FOURtoONEmux
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


module FOURtoONEmux(y,a,b,c,d,s1,s2);
input logic a,b,c,d,s1,s2;
output logic y;
logic output1,output2;
TWOtoONEmux mux1(output1,a,b,s2);
TWOtoONEmux mux2(output2,c,d,s2);
TWOtoONEmux mux3(y,output1,output2,s1);
endmodule

module TWOtoONEmux(y,a,b,s1);
input logic a,b,s1;
output logic y;
assign y = (~s1&a)|(s1&b);
endmodule

