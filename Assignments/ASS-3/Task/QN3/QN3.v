module two_task;
    reg a, b, c;
    integer i;

    // Initialize random values
    initial begin
        a = $urandom % 2;
        b = $urandom % 2;
    end

    // Toggle a and b
    initial begin
        forever begin
            #1 a = ~a;
            #2 b = ~b;
        end
    end

    // AND task
    task and_g;
        begin
            #4 c = a & b;
        end
    endtask

    // OR task
    task or_g;
        begin
            #6 c = a | b;
        end
    endtask

    // Test sequence
    initial begin
        $monitor("Time=%0t a=%0d b=%0d c=%0d", $time, a, b, c);
        for (i = 0; i < 5; i = i + 1) begin
            and_g;
            or_g;
            #1;
        end
        $finish;
    end
endmodule


