module min_function;

    reg [7:0] a, b;
    reg [7:0] min_val;

    function [7:0] min;
        input [7:0] x, y;
        begin
            if (x < y)
                min = x;
            else
                min = y;
        end
    endfunction

    initial begin
        a = $urandom % 256;
        b = $urandom % 256;
        min_val = min(a, b);
        $display("Time=%0t, a=%0d, b=%0d, min=%0d", $time, a, b, min_val);
        #10;
        $finish;
    end

endmodule

