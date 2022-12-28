`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2022 14:11:11
// Design Name: 
// Module Name: labCalctb
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

module labCalctb();
logic At,Bt,Ct,Dt,Z,Y;
labCalc dut(At,Bt,Ct,Dt,Z,Y);
initial begin
Ct=0; Dt=0; At=0; Bt=0; #50;
Ct=0; Dt=0; At=0; Bt=1; #50;
Ct=0; Dt=0; At=1; Bt=0; #50;
Ct=0; Dt=0; At=1; Bt=1; #50;
Ct=0; Dt=1; At=0; Bt=0; #50;
Ct=0; Dt=1; At=0; Bt=1; #50;
Ct=0; Dt=1; At=1; Bt=0; #50;
Ct=0; Dt=1; At=1; Bt=1; #50;
Ct=1; Dt=0; At=0; Bt=0; #50;
Ct=1; Dt=0; At=0; Bt=1; #50;
Ct=1; Dt=0; At=1; Bt=0; #50;
Ct=1; Dt=0; At=1; Bt=1; #50;
Ct=1; Dt=1; At=0; Bt=0; #50;
Ct=1; Dt=1; At=0; Bt=1; #50;
Ct=1; Dt=1; At=1; Bt=0; #50;
Ct=1; Dt=1; At=1; Bt=1; #50;
end
endmodule
