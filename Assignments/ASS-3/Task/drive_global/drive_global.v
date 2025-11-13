module drive_global_task;
    reg [7:0] global_var;

    task set_global;
        input [7:0] value;
        begin
            global_var = value;
        end
    endtask

    initial begin
        global_var = 0;
        $display("Initial global_var = %0d", global_var);

        set_global(42);
        $display("After task call, global_var = %0d", global_var);

        set_global(100);
        $display("After another task call, global_var = %0d", global_var);

        $finish;
    end
endmodule

