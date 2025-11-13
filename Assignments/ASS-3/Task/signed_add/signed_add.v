module signed_add_task;
    reg signed [7:0] a, b;
    reg signed [7:0] sum;

    task add_task;
        input signed [7:0] x, y;
        output signed [7:0] result;
        begin
            result = x + y;
        end
    endtask

    initial begin
        a = -10;
        b = 25;
        add_task(a, b, sum);
        $display("Signed addition: %0d + %0d = %0d", a, b, sum);

        a = -50;
        b = -20;
        add_task(a, b, sum);
        $display("Signed addition: %0d + %0d = %0d", a, b, sum);

        $finish;
    end
endmodule

