module pload_register(D,L,clk,Q);
	input [7:0] D;
	input L,clk;
	output reg [7:0] Q;
	always@(posedge clk)begin
		Q<=L?D:Q;
	end
endmodule