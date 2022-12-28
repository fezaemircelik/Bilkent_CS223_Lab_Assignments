`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2022 22:54:56
// Design Name: 
// Module Name: partG
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


module partG(y,a,b,c,d);
input logic a,b,c,d;
output logic y;
EIGHTtoONEmux m(y,a,a,~a,~a,a,a,~a,~a,b,c,d);
endmodule

module EIGHTtoONEmux(y,a0,a1,a2,a3,a4,a5,a6,a7,s1,s2,s3);
input logic a0,a1,a2,a3,a4,a5,a6,a7,s1,s2,s3;
output logic y;
logic b1,b2,b3,b4;
FOURtoONEmux m1(b1,a0,a1,a2,a3,s2,s3);
FOURtoONEmux m2(b2,a4,a5,a6,a7,s2,s3);
assign b3 = b1&(~s1);
assign b4 = b2&s1;
assign y = b3|b4;
endmodule

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
