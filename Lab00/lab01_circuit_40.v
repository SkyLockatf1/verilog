module adder(in1,in0,out,op);

    input [7:0] in1;
	input [7:0] in0;
	output [7:0] out;
    input [1:0] op;
	reg [7:0] out;
    

    always @(*) begin
		out = 'hx;
		if(op==2'b00)
			out = in1+in0;
		else if(op==2'b01)
			out = in1;
		else if(op==2'b11)
			out = 0;
	end

endmodule