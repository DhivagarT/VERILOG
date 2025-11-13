module reverse_bits;
    reg [7:0] in;
    reg [7:0] out;
    integer i;

    task reverse;
        input [7:0] data_in;
        output [7:0] data_out;
        integer j;
        begin
            data_out = 8'b0;
            for (j = 0; j < 8; j = j + 1)
                data_out[j] = data_in[7-j];
        end
    endtask

    initial begin
        in = 8'b10110010;
        reverse(in, out);
        $display("Input = %b, Reversed = %b", in, out);

        in = 8'b11001100;
        reverse(in, out);
        $display("Input = %b, Reversed = %b", in, out);

        $finish;
    end
endmodule

