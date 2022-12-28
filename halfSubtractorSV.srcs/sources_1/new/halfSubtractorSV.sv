module halfSubtractorSV(D,Bo,A,Bi);
input logic A,Bi;
output logic D,Bo;
assign D=A^Bi;
assign Bo=~A&Bi;
endmodule