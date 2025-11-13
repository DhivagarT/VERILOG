module count_ones_task;
    reg [7:0] data_in;
    reg [3:0] count;
    integer i;

    task count_ones;
        input [7:0] in;
        output [3:0] result;
        integer j;
        begin
            result = 0;
            for (j = 0; j < 8; j = j + 1) begin
                if (in[j] == 1)
                    result = result + 1;
            end
        end
    endtask

    initial begin
        data_in = 8'b10110110;
        count_ones(data_in, count);
        $display("Data = %b, Number of 1s = %0d", data_in, count);

        data_in = 8'b11110000;
        count_ones(data_in, count);
        $display("Data = %b, Number of 1s = %0d", data_in, count);

        $finish;
    end
endmodule

