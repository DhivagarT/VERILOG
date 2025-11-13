module task_call_demo;
    reg [7:0] A, B;
    reg [7:0] result;

    task add_task;
        input [7:0] x, y;
        output [7:0] sum;
        begin
            sum = x + y;
        end
    endtask

    task double_add_task;
        input [7:0] p, q;
        output [7:0] res;
        reg [7:0] temp;
        begin
            add_task(p, q, temp);
            add_task(temp, temp, res);
        end
    endtask

    initial begin
        A = 4;
        B = 3;
        double_add_task(A, B, result);
        $display("Result = %0d", result);
        $finish;
    end
endmodule

