module top_module(S,L,A,clk,out);
	input S,L,clk;
	input [7:0] A;
	output [7:0] out;
	wire [7:0] aout;
	wire [7:0] mout;
	wire [7:0] rout;
	adder a1(A,rout,aout);
	mux m1(8'b0,aout,S,mout);
	pload_register r1(mout,L,clk,rout);
	assign out = rout;
endmodule