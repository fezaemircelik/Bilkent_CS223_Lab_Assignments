`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2022 15:25:13
// Design Name: 
// Module Name: halfAdderSVtb
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


module halfAdderSVtb();
logic A,B;
logic S,C;

halfAdderSV dut(.a(A),.b(B),.s(S),.c(C));

initial begin
A=0;B=0;#100;
A=0;B=1;#100;
A=1;B=0;#100;
A=1;B=1;#100;
end    
endmodule
