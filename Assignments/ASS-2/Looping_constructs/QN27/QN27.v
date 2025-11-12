module count_ones;
    reg [3:0] data;
    integer i;
    integer count;

    initial begin
        data = 4'b1011; // Example 4-bit vector
        i = 0;
        count = 0;

        while (i < 4) begin
            if (data[i] == 1)
                count = count + 1;
            i = i + 1;
        end

        $display("Data = %b, Number of 1s = %0d", data, count);
        $finish;
    end
endmodule

