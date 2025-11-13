module toggle_clock;
    reg clk;

    task toggle_10_times;
        integer i;
        begin
            for (i = 0; i < 10; i = i + 1) begin
                clk = ~clk;
                #5;
            end
        end
    endtask

    initial begin
        clk = 0;
        toggle_10_times;
        $display("Final clock state = %0d", clk);
        $finish;
    end
endmodule

