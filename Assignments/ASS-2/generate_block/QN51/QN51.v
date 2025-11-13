module genvar_init;

    reg [7:0] reg_array;
    genvar i;

    generate
        for (i = 0; i < 8; i = i + 1) begin : init_loop
            initial reg_array[i] = i % 2;  // initialize pattern (e.g., 01010101)
        end
    endgenerate

    initial begin
        #1;
        $display("Time=%0t reg_array=%b", $time, reg_array);
        $finish;
    end

endmodule

