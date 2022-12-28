`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2022 16:50:11
// Design Name: 
// Module Name: twoBitAddertb
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


module twoBitAdderSVtb();
logic ci_t,a0_t,b0_t,a1_t,b1_t;
logic s0_t,s1_t,co_t;
twoBitAdderSV dut(.s0(s0_t),.s1(s1_t),.co(co_t),.ci(ci_t),.a0(a0_t),.b0(b0_t),.a1(a1_t),.b1(b1_t));
initial begin
ci_t=0; a0_t=0; b0_t=0; a1_t=0; b1_t=0; #10;
ci_t=0; a0_t=0; b0_t=0; a1_t=0; b1_t=1; #10;
ci_t=0; a0_t=0; b0_t=0; a1_t=1; b1_t=0; #10;
ci_t=0; a0_t=0; b0_t=0; a1_t=1; b1_t=1; #10;
ci_t=0; a0_t=0; b0_t=1; a1_t=0; b1_t=0; #10;
ci_t=0; a0_t=0; b0_t=1; a1_t=0; b1_t=1; #10;
ci_t=0; a0_t=0; b0_t=1; a1_t=1; b1_t=0; #10;
ci_t=0; a0_t=0; b0_t=1; a1_t=1; b1_t=1; #10;
ci_t=0; a0_t=1; b0_t=0; a1_t=0; b1_t=0; #10;
ci_t=0; a0_t=1; b0_t=0; a1_t=0; b1_t=1; #10;
ci_t=0; a0_t=1; b0_t=0; a1_t=1; b1_t=0; #10;
ci_t=0; a0_t=1; b0_t=0; a1_t=1; b1_t=1; #10;
ci_t=0; a0_t=1; b0_t=1; a1_t=0; b1_t=0; #10;
ci_t=0; a0_t=1; b0_t=1; a1_t=0; b1_t=1; #10;
ci_t=0; a0_t=1; b0_t=1; a1_t=1; b1_t=0; #10;
ci_t=0; a0_t=1; b0_t=1; a1_t=1; b1_t=1; #10;
ci_t=1; a0_t=0; b0_t=0; a1_t=0; b1_t=0; #10;
ci_t=1; a0_t=0; b0_t=0; a1_t=0; b1_t=1; #10;
ci_t=1; a0_t=0; b0_t=0; a1_t=1; b1_t=0; #10;
ci_t=1; a0_t=0; b0_t=0; a1_t=1; b1_t=1; #10;
ci_t=1; a0_t=0; b0_t=1; a1_t=0; b1_t=0; #10;
ci_t=1; a0_t=0; b0_t=1; a1_t=0; b1_t=1; #10;
ci_t=1; a0_t=0; b0_t=1; a1_t=1; b1_t=0; #10;
ci_t=1; a0_t=0; b0_t=1; a1_t=1; b1_t=1; #10;
ci_t=1; a0_t=1; b0_t=0; a1_t=0; b1_t=0; #10;
ci_t=1; a0_t=1; b0_t=0; a1_t=0; b1_t=1; #10;
ci_t=1; a0_t=1; b0_t=0; a1_t=1; b1_t=0; #10;
ci_t=1; a0_t=1; b0_t=0; a1_t=1; b1_t=1; #10;
ci_t=1; a0_t=1; b0_t=1; a1_t=0; b1_t=0; #10;
ci_t=1; a0_t=1; b0_t=1; a1_t=0; b1_t=1; #10;
ci_t=1; a0_t=1; b0_t=1; a1_t=1; b1_t=0; #10;
ci_t=1; a0_t=1; b0_t=1; a1_t=1; b1_t=1; #10;
end
endmodule
