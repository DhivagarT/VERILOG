module multiply_task;
    reg [7:0] a, b;

    task multiply;
        input [7:0] x, y;
        begin
            $display("%0d * %0d = %0d", x, y, x*y);
        end
    endtask

    initial begin
        a = 5;
        b = 7;
        multiply(a, b);

        a = 12;
        b = 10;
        multiply(a, b);

        $finish;
    end
endmodule

