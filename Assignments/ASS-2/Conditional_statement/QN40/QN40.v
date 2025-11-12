module flag_logic (
    input x, y, z,
    output reg out
);
    always @(*) begin
        if (x && y && z)
            out = 1'b1;
        else if ((x && y) || (y && z))
            out = 1'b1;
        else if (x || y || z)
            out = 1'b0;
        else
            out = 1'b0;
    end
endmodule


module tb_flag_logic;
    reg x, y, z;
    wire out;

    flag_logic uut(x, y, z, out);

    initial begin
        x = 0; y = 0; z = 0;
        #2 x = 1;
        #2 y = 1;
        #2 z = 1;
        #2 x = 0; y = 0; z = 1;
        #2 x = 1; y = 1; z = 0;
        #2 x = 0; y = 1; z = 1;
        #2 x = 0; y = 0; z = 0;
        #2 $finish;
    end

    initial begin
        $monitor("Time=%0t | x=%b y=%b z=%b | out=%b", $time, x, y, z, out);
    end
endmodule

