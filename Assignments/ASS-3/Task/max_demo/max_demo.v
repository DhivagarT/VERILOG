module max_task_demo;
    reg [7:0] a, b, c, d;
    reg [7:0] max_val;

    task find_max;
        input [7:0] w, x, y, z;
        output [7:0] max_out;
        begin
            max_out = w;
            if (x > max_out) max_out = x;
            if (y > max_out) max_out = y;
            if (z > max_out) max_out = z;
        end
    endtask

    initial begin
        a = 12;
        b = 45;
        c = 7;
        d = 33;
        find_max(a, b, c, d, max_val);
        $display("Maximum = %0d", max_val);
        $finish;
    end
endmodule

