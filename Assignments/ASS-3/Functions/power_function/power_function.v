module power_function;
    reg [7:0] a, b;
    reg [31:0] r;

    function [31:0] power;
        input [7:0] x, y;
        integer i;
        begin
            power = 1;
            for (i = 0; i < y; i = i + 1)
                power = power * x;
        end
    endfunction

    initial begin
        a = 3;
        b = 4;
        r = power(a, b);
        $display("a=%0d b=%0d a^b=%0d", a, b, r);
        #10;
        $finish;
    end
endmodule

