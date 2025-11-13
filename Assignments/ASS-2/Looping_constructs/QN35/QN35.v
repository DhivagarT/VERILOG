module loop_waveform;
    reg clk_for, clk_repeat, clk_forever;
    integer i;

    // FOR loop — runs fixed number of iterations (10)
    initial begin
        clk_for = 0;
        for (i = 0; i < 10; i = i + 1) begin
            #5 clk_for = ~clk_for;
        end
    end

    // REPEAT loop — runs fixed number of times (5)
    initial begin
        clk_repeat = 0;
        repeat (5) begin
            #10 clk_repeat = ~clk_repeat;
        end
    end

    // FOREVER loop — runs infinitely
    initial begin
        clk_forever = 0;
        forever #3 clk_forever = ~clk_forever;
    end

    initial begin
        $dumpfile("loop_waveform.vcd");
        $dumpvars(0, loop_waveform);
        #100 $finish;
    end
endmodule

