module lab_circuit(a, b, c, x, y);

    input a, b, c;
    output x, y;
    

    assign x = (a&b&c)^(~a&c);
    assign y = (~(a|b))^(a&c);


endmodule