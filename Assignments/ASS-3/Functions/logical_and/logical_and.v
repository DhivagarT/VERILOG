module and_all_bits;
    reg [7:0] a;
    reg result;

    function and_all;
        input [7:0] x;
        integer i;
        begin
            and_all = 1;
            for (i = 0; i < 8; i = i + 1)
                and_all = and_all & x[i];
        end
    endfunction

    initial begin
        a = 8'b1111_0111;
        result = and_all(a);
        $display("a=%b  AND_all_bits=%b", a, result);

        #10;
        $finish;
    end
endmodule

