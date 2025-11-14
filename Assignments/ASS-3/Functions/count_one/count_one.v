module count_ones_function;
    reg [7:0] data;
    integer count;

    function integer count_ones;
        input [7:0] x;
        integer i;
        begin
            count_ones = 0;
            for (i = 0; i < 8; i = i + 1)
                count_ones = count_ones + x[i];
        end
    endfunction

    initial begin
        data = $urandom % 256;
        count = count_ones(data);
        $display("Data = %0b, Number of 1's = %0d", data, count);
        #10;
        $finish;
    end
endmodule

