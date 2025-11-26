`timescale 1ns/1ps
module tb_top();
	reg clk;
	reg [7:0] A;
	reg S;
	reg L;
	wire [7:0] R;
	top_module top(S,L,A,clk,R);
	initial begin
		clk=0;
		A=8'd2;
		S=1;
		L=1;
		#5;// register R now is 0;
		S=0;
		// register R now is 2;
		// register R now is 2;
		// register R now is 4;
		// register R now is 4;
		// register R now is 6;
		// register R now is 6;
		#60
		A=8'd4;
		#70; 
		$finish;
		// register R now is 10;
	end
	always #10 L = ~L; // 每10ns反轉一次
	always #5 clk = ~clk;// 每5ns反轉一次
endmodule