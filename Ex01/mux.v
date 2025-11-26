module mux(in1,in0,S,out);
	input [7:0] in1;
	input [7:0] in0;
	input S;
	output reg [7:0] out;
	always@(*)begin
		if(S==1'b0)
			out=in0;
		else
			out=in1;
	end
endmodule