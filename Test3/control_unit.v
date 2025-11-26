module control_unit (start,R7,L,S,reset,clk);
    input start,R7,reset,clk;
    output reg L,S;
    reg [1:0] state;
    `define S0 2'b00
    `define S1 2'b01
    `define S2 2'b10
    `define S3 2'b11
    always @(posedge clk) begin
        if(reset)
            state <= `S0;
        else begin
            case (state) 
                `S0:state <=start?`S1:`S0;
                `S1:state <=`S2;
                `S2:state <=R7?`S3:`S0;
                `S3:state <=`S0;
            endcase
        end
    end
    always @(*) begin
        case (state)
            `S0:{L,S} =2'b0x;
            `S1:{L,S} =2'b11;
            `S2:{L,S} =2'b0x;
            `S3:{L,S} =2'b10;
        endcase
    end
endmodule