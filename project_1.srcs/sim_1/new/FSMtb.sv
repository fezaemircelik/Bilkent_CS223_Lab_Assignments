`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2022 07:01:09
// Design Name: 
// Module Name: FSMtb
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


module Lab04__tb();

logic CLK, reset;
logic[2:0] la, lb;
logic SA,SB;
Lab04_ dut(CLK, reset, SA, SB, la,lb);
initial begin
CLK = 0;
forever #10 CLK = ~CLK;
end

initial begin
SA=0; SB=0; reset=1; #4;
reset = 0; #20;
SA =0; SB=1; #20;
SA =0; SB=1; #20;
SA =1; SB=1; #200;
SA =0; SB=1; #20;
SB =1; SB=1; #20;
end
endmodule
