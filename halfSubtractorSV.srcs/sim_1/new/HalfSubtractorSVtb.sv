module halfSubtractorSVtb();
logic a,b;
logic D,Bo;
halfSubtractorSV dut(.D(D),.Bo(Bo),.A(a),.Bi(b));
initial begin
a=0;b=0;#100;
a=0;b=1;#100;
a=1;b=0;#100;
a=1;b=1;#100;
end
endmodule
