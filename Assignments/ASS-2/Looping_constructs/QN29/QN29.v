module memory_init;
    reg [7:0] mem [0:15];
    integer i;

    initial begin
        i = 0;
        repeat (16) begin
            mem[i] = i;
            i = i + 1;
        end

        for (i = 0; i < 16; i = i + 1) begin
            $display("mem[%0d] = %0d", i, mem[i]);
        end

        $finish;
    end
endmodule

