module forever_disable;
    reg clk;
    integer count;

    initial begin
        clk = 0;
        count = 0;

        forever begin
            #2 clk = ~clk;
            count = count + 1;
            $display("Time=%0t | clk=%b | count=%0d", $time, clk, count);
        end
    end

    initial begin
        $display("Forever loop disabled at time %0t", $time);
        #2 $finish;
    end
endmodule


