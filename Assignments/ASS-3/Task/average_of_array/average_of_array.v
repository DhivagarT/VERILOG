module average_task;
    reg [7:0] a, b, c, d, e;
    reg [7:0] avg;
    reg  [7:0]sum;

    task calc_average;
        begin
            sum = a+b+c+d+e;
            avg = sum / 5;
        end
    endtask

    initial begin
        a = 10; b = 20; c = 30; d = 40; e = 50;
        calc_average;
        $display("Average = %0d", avg);
        $finish;
    end
endmodule

