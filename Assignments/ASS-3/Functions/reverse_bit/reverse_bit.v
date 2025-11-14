module reverse_bits;
    reg [7:0] a;
    reg [7:0] r;

    function [7:0] rev;
        input [7:0] x;
        integer i;
        begin
            for (i = 0; i < 8; i = i + 1)
                rev[i] = x[7 - i];
        end
    endfunction

    initial begin
        a = 8'b1011_0010;      // Example
        r = rev(a);
        $display("a = %b  reversed = %b", a, r);

        #10;
        $finish;
    end
endmodule

