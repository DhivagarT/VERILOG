module four_one_mux;

    reg [3:0] a;
    reg [1:0] sel;
    reg y;

    always @(*) begin
        casex(sel)
            2'b00: y = a[0];
            2'b01: y = a[1];
            2'b10: y = a[2];
            2'b11: y = a[3];
            default: y = 1'b0;
        endcase
    end

    initial begin
        $monitor("Time=%0t a=%b sel=%b y=%b", $time, a, sel, y);

        a = 4'b1011; 
        sel = 2'b00; #5;
        sel = 2'b01; #5;
        sel = 2'b10; #5;
        sel = 2'b11; #5;
        sel = 2'bx0; #5;
        sel = 2'b1x; #5;

        $finish;
    end

endmodule

