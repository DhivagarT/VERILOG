module mux_if (
    input a, b, sel,
    output reg y
);
    always @(*) begin
        if (sel)
            y = b;
        else
            y = a;
    end
endmodule


module tb_mux_if;
    reg a, b, sel;
    wire y;

    mux_if uut(a, b, sel, y);

    initial begin
        a = 0;
        b = 1;
        sel = 0;
        forever #2 sel = ~sel;
    end

    initial begin
        $monitor("Time=%0t | a=%0d b=%0d sel=%0d y=%0d", $time, a, b, sel, y);
        #20 $finish;
    end
endmodule


