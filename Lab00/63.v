module adder(in0,in1,s,load,clk,out);
	input [7:0] in0;
	input [7:0] in1;
	input s;
	input load;
	input clk;
	output reg [7:0] out;
	always@(posedge clk) begin
		out = 'hx;
		if(s==1'b1&load)
			out <= in0+in1;
		else if(s==1'b0&load)
			out <= 1'b0;
		else
			out <=out;
	end
endmodule