module factorial_task;
    reg [7:0] n;
    reg [31:0] fact;
    integer i;

    task calc_factorial;
        input [7:0] num;
        output [31:0] result;
        begin
            result = 1;
            for (i = 1; i <= num; i = i + 1)
                result = result * i;
        end
    endtask

    initial begin
        n = 5;
        calc_factorial(n, fact);
        $display("Factorial of %0d is %0d", n, fact);
        $finish;
    end
endmodule

