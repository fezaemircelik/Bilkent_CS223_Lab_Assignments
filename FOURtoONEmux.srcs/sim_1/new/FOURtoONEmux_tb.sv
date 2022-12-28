`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2022 19:41:40
// Design Name: 
// Module Name: FOURtoONEmux_tb
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


module FOURtoONEmux_tb();
logic y,a,b,c,d,s1,s2;
FOURtoONEmux dut(y,a,b,c,d,s1,s2);
initial begin
for (int i = 0; i < 64; i = i + 1)
    begin
    #15
    {a,b,c,d,s1,s2} = i;
    end
end
endmodule
