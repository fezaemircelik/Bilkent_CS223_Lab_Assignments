`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2022 15:02:53
// Design Name: 
// Module Name: fulladdertb
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


module fulladdertb();
logic a_t,b_t,ci_t;
logic s_t,co_t;
fullAdder dut(.s(s_t),.co(co_t),.a(a_t),.b(b_t),.ci(ci_t));


initial begin
a_t=0; b_t=0; ci_t=0; #100;
a_t=0; b_t=0; ci_t=1; #100;
a_t=0; b_t=1; ci_t=0; #100;
a_t=0; b_t=1; ci_t=1; #100;
a_t=1; b_t=0; ci_t=0; #100;
a_t=1; b_t=0; ci_t=1; #100;
a_t=1; b_t=1; ci_t=0; #100;
a_t=1; b_t=1; ci_t=1; #100;
end
endmodule
