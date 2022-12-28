`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2022 02:39:39
// Design Name: 
// Module Name: fullAdder
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


module fullAdder(s,co,a,b,ci);
input logic a,b,ci;
output logic s,co;
logic s1,co1,co2;

halfAdder first(.S(s1),.C(co1),.A(a),.B(b));
halfAdder second(.S(s),.C(co2),.A(s1),.B(ci));

or orgate(co,co2,co1);

endmodule

module halfAdder(S,C,A,B);
input A,B;
output S,C;
assign S = A^B;
assign C = A&B;
endmodule
