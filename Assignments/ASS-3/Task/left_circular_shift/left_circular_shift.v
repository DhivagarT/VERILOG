module left_circular_shift;
    reg [7:0] data;

    task lshift;
        input [7:0] in;
        output [7:0] out;
        begin
            out = {in[6:0], in[7]};
        end
    endtask

    initial begin
        data = 8'b10110010;
        $display("Original = %b", data);
        lshift(data, data);
        $display("After 1 shift = %b", data);
        lshift(data, data);
        $display("After 2 shifts = %b", data);
        $finish;
    end
endmodule

