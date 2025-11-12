module mix_example2;
    reg x, y, z;

    initial begin
        x = 1;         // blocking
        y = 2;         // blocking
        z = 0;         // blocking

        z <= x + y;    // non-blocking
        y = x + z;     // blocking

        #1;
        $display("x=%0d y=%0d z=%0d", x, y, z);
    end
endmodule


