module multiply_no_star;
    reg [7:0] a, b;
    reg [15:0] r;

    function [15:0] mul;
        input [7:0] x, y;
        integer i;
        begin
            mul = 0;
            for (i = 0; i < y; i = i + 1)
                mul = mul + x;
        end
    endfunction

    initial begin
        a = 5;
        b = 7;
        r = mul(a, b);
        $display("a=%0d  b=%0d  result=%0d", a, b, r);

        #10;
        $finish;
    end
endmodule

