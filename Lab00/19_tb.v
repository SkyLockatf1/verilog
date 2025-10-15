`timescale 1ns/1ps
module lab_circuit_tb;
  reg a,b,c;
  wire x,y;

  lab_circuit uut(.a(a), .b(b), .c(c), .x(x), .y(y));

  // 讓 A/B/C 分別每 10/20/40ns 反相一次
  initial begin a = 0; forever #10 a = ~a; end
  initial begin b = 0; forever #20 b = ~b; end
  initial begin c = 0; forever #40 c = ~c; end

  initial begin
    #1;         // 讓 t=0 有初值
    #400 $finish;
  end
endmodule
