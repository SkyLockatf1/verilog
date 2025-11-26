module data_path (A,B,L,S,R,reset,clk);
    input [7:0] A,B;
    input L,S,reset,clk;
    output reg [7:0] R;
    wire [7:0] X=S?A:8'b0;
    wire [7:0] Y=S?B:R;
    wire [7:0] D=X+~Y+1'b1;
    always@(posedge clk)begin
        if(reset)
            R<=8'h0;
        else
            R<=L?D:R; 
    end
endmodule