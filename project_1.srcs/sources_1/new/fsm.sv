`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2022 06:10:17
// Design Name: 
// Module Name: fsm
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


module Lab04_(input logic clk,input logic reset,input logic SA, SB,output logic [2:0] la,lb);
typedef enum logic [2:0]{S0,S1,S2,S3,S4,S5,S6,S7} statetype;

parameter red = 3'b111;
parameter green = 3'b011;
parameter yellow = 3'b001;

reg[28:0] counter = 0;
reg clk1;



//always @(posedge clk)
//begin
  
//    if(counter == 150000000)
//       begin
//       counter <= 0;
//       clk1 = ~clk1;
//        end
//        else
//        counter <= counter +1;
//     end

statetype state,nextstate;

always_ff @(posedge clk, posedge reset)
if(reset)state <= S0;
else state <= nextstate;

always_comb
case(state)
S0: if(~SB) nextstate = S0; 
else nextstate = S1;
S1: nextstate = S2;
S2: nextstate = S3;
S3: nextstate = S4; 
S4:if(~SA & SB) nextstate = S4;
    else  nextstate = S5;
S5: nextstate = S6; 
S6: nextstate = S7; 
S7: nextstate = S0;
endcase

always_comb
    case(state)
        S0:{la,lb} = {green,red};
        S1:{la,lb} = {yellow,red};
        S2:{la,lb} = {red,red};
        S3:{la,lb} = {red,yellow};
        S4:{la,lb} = {red,green};
        S5:{la,lb} = {red,yellow};
        S6:{la,lb} = {red,red};
        S7:{la,lb} = {yellow,red};
        endcase
endmodule