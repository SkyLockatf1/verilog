module adder(in1,in0,out);
	input [7:0] in1;
	input [7:0] in0;
	output [7:0] out;
	assign out = in1+in0;
endmodule