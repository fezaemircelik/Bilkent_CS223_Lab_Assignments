`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2022 15:24:54
// Design Name: 
// Module Name: halfAdderSV
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


module halfAdderSV(
    input logic a,
    input logic b,
    output logic s,
    output logic c
    );
    assign s = a^b;
    assign c = a&b;
endmodule
