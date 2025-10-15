`timescale 1ns/1ps
module adder_tb;

    reg  [7:0] in1;
    reg  [7:0] in0;
    reg  [1:0] op;
    wire [7:0] out;

    adder dut(.in1(in1), .in0(in0), .out(out), .op(op));

    initial begin
        // 初值
        in1 = 8'd3;  in0 = 8'd5;  op = 2'b00;  // out = 8
        #10 in1 = 8'd7;                        // out = 12
        #10 op  = 2'b01;                       // out = in1 (=7)
        #10 in0 = 8'd9;                        // out 仍 7
        #10 op  = 2'b10;                       // 圖中未定義，out 保持前值
        #10 op  = 2'b11;                       // out = 0
        #10 in1 = 8'd10; in0 = 8'd1; op = 2'b00; // out = 11
        #30 $finish;
    end
endmodule
