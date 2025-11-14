module absolute_value;
    reg signed [7:0] a;
    reg [7:0] result;

    function [7:0] absolute;
        input signed [7:0] x;
        begin
            if (x < 0)
                absolute = -x;
            else
                absolute = x;
        end
    endfunction

    initial begin
        a = -25;
        result = absolute(a);
        $display("a = %0d, absolute = %0d", a, result);

        a = 37;
        result = absolute(a);
        $display("a = %0d, absolute = %0d", a, result);

        #10;
        $finish;
    end
endmodule

