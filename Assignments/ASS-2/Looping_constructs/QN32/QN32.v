module shift_until_msb;
    reg [7:0] data;
    integer count;

    initial begin
        data = 8'b00101100; // Example 8-bit value
        count = 0;

        while (data[7] != 1) begin
            data = data << 1;
            count = count + 1;
            $display("Time=%0t | data=%b | shifts=%0d", $time, data, count);
        end

        $display("Final data = %b after %0d shifts", data, count);
        $finish;
    end
endmodule

