`timescale 1ns/1ps
`include "control_unit.v"
`include "data_path.v"
module tb_Test3();
    reg start,reset,clk;
    reg [7:0] A,B;
    wire [7:0] R;
    wire L,S;
    control_unit u_control(start,R[7],L,S,reset,clk);
    data_path u_data_path(A,B,L,S,R,reset,clk);
    initial begin
        start=1;
        reset=1;
        clk=0;
        A=3;
        B=8;
        #1;
        #5;
        reset=0;
        #10;
        start=0;
        #40;
        start=1;
        A=8;
        B=4;
        #1;
        #5;
        #10;
        start=0;
        #100; $finish;
    end
    always #5 clk = ~clk;
endmodule