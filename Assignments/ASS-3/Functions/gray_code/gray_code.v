module gray_code_4bit;
    reg [3:0] a;
    reg [3:0] g;

    function [3:0] gray;
        input [3:0] x;
        begin
            gray = x ^ (x >> 1);
        end
    endfunction

    initial begin
        a = 4'b1010;
        g = gray(a);
        $display("a=%b gray=%b", a, g);
        #10;
        $finish;
    end
endmodule

