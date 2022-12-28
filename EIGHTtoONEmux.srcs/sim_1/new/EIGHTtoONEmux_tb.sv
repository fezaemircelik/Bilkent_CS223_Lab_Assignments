`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2022 12:58:50
// Design Name: 
// Module Name: EIGHTtoONEmux_tb
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


module EIGHTtoONEmux_tb();
logic a0,a1,a2,a3,a4,a5,a6,a7,s1,s2,s3;;
logic y;
EIGHTtoONEmux dut(y,a0,a1,a2,a3,a4,a5,a6,a7,s1,s2,s3);
initial begin
for(int i = 0; i < 2048; i = i + 1) begin
    #0.3
    {a0,a1,a2,a3,a4,a5,a6,a7,s1,s2,s3} = i;
end
end
endmodule
