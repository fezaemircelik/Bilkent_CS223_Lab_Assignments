`timescale 1ns / 1ps

module labCalc(A,B,C,D,Z,Y);
input logic A,B,C,D;
output logic Z,Y;
logic i1,i2,i3,i4,t1,t2;
assign i1 = A^B;
nand(i2,A,B);
half_adder ha(t1,i3,A,B);
half_substractor hs(A,B,t2,i4);
mux_2 M2(Z,D,t1,t2);
mux_4 M4(Y,C,D,i1,i2,i3,i4);
endmodule

module mux_2(Y,S,A,B);
input logic S,A,B;
output logic Y;
assign Y = ~S&A|S&B;
endmodule

module mux_4(Y,s0,s1,A,B,C,D);
input logic s0,s1,A,B,C,D;
output logic Y;
assign Y = (A&~s0&~s1)|(B&~s0&s1)|(C&s0&~s1)|(D&s0&s1);
endmodule

module half_adder(C,S,a,b);
input logic a,b;
output logic S,C;

assign  S = a^b;
assign C = a&b;
endmodule

module half_substractor(a,b,C,S);
input logic a,b;
output logic S,C;

assign S = a^b;
assign C = ~a&b;
endmodule
