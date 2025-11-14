module power_of_two;
    reg [7:0] a;
    reg result;

    function is_pow2;
        input [7:0] x;
        begin
            if (x != 0 && (x & (x - 1)) == 0)
                is_pow2 = 1;
            else
                is_pow2 = 0;
        end
    endfunction

    initial begin
        a = 8'd16;  
        result = is_pow2(a);
        $display("a=%0d  power_of_2=%0d", a, result);

        #10;
        $finish;
    end
endmodule

