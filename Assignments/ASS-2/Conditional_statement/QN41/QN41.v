module encoder_if (
    input [3:0] in,
    output reg [1:0] out
);
    always @(*) begin
        if (in[3])
            out = 2'b11;
        else if (in[2])
            out = 2'b10;
        else if (in[1])
            out = 2'b01;
        else if (in[0])
            out = 2'b00;
        else
            out = 2'b00;
    end
endmodule


module tb_encoder_if;
    reg [3:0] in;
    wire [1:0] out;

    encoder_if uut(in, out);

    initial begin
        in = 4'b0001; #2;
        in = 4'b0010; #2;
        in = 4'b0100; #2;
        in = 4'b1000; #2;
        in = 4'b0000; #2;
        $finish;
    end

    initial begin
        $monitor("Time=%0t | in=%b | out=%b", $time, in, out);
    end
endmodule

