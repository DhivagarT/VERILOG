module shift_right_n;
    reg [7:0] a;
    reg [3:0] n;
    reg [7:0] r;

    function [7:0] sh_right;
        input [7:0] x;
        input [3:0] sh;
        begin
            sh_right = x >> sh;
        end
    endfunction

    initial begin
        a = 8'b11011000;
        n = 3;
        r = sh_right(a, n);
        $display("a=%b n=%0d shifted=%b", a, n, r);
        #10;
        $finish;
    end
endmodule

