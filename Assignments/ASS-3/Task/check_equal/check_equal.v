module check_equal_task;
    reg [7:0] a, b;
    reg flag;

    task check_equal;
        input [7:0] x, y;
        output f;
        begin
            if (x == y)
                f = 1;
            else
                f = 0;
        end
    endtask

    initial begin
        a = 12;
        b = 12;
        check_equal(a, b, flag);
        $display("a = %0d, b = %0d, Equal? %0d", a, b, flag);

        a = 7;
        b = 10;
        check_equal(a, b, flag);
        $display("a = %0d, b = %0d, Equal? %0d", a, b, flag);

        $finish;
    end
endmodule

