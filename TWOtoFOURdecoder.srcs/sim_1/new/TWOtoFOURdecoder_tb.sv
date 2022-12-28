`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2022 12:51:33
// Design Name: 
// Module Name: TWOtoFOURdecoder_tb
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


module TWOtoFOURdecoder_tb();
logic a0,a1,enable,y0,y1,y2,y3;
TWOtoFOURdecoder dut(y0,y1,y2,y3,a0,a1,enable);
initial begin
a0=0; a1=0; enable=0;   #100;
a0=0; a1=0; enable=1;   #100;
a0=0; a1=1; enable=0;   #100;
a0=0; a1=1; enable=1;   #100;
a0=1; a1=0; enable=0;   #100;
a0=1; a1=0; enable=1;   #100;
a0=1; a1=1; enable=0;   #100;
a0=1; a1=1; enable=1;   #100;
end
endmodule
