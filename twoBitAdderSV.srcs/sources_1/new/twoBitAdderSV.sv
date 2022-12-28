`timescale 1ns / 1ps
module twoBitAdderSV(s0,s1,co,ci,a0,b0,a1,b1);
input logic ci,a0,b0,a1,b1;
output logic s0,s1,co;
logic w;
fullAdder firstF(s0,w,a0,b0,ci);
fullAdder secondF(s1,co,a1,b1,w);
endmodule

module fullAdder(s,co,a,b,ci);
input logic a,b,ci;
output logic s,co;
logic s1,co1,co2;
halfAdder first(.S(s1),.C(co1),.A(a),.B(b));
halfAdder second(.S(s),.C(co2),.A(s1),.B(ci));
or orgate(co,co2,co1);
endmodule

module halfAdder(S,C,A,B);
input logic A,B;
output logic S,C;
assign S = A^B;
assign C = A&B;
endmodule
