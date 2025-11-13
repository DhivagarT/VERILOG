module tb_case_compare;

    reg [3:0] in;
    reg [7:0] out_case, out_casex, out_casez;

    always @(*) begin
        case(in)
            4'b1x0z: out_case = 8'b00000001;
            default: out_case = 8'b11111111;
        endcase
    end

    always @(*) begin
        casex(in)
            4'b1x0z: out_casex = 8'b00000001;
            default: out_casex = 8'b11111111;
        endcase
    end

    always @(*) begin
        casez(in)
            4'b1?0?: out_casez = 8'b00000001;
            default: out_casez = 8'b11111111;
        endcase
    end

    initial begin
        $monitor("Time=%0t in=%b | case=%b casex=%b casez=%b",
                 $time, in, out_case, out_casex, out_casez);

        in = 4'b1x0z; #5;
        in = 4'b1000; #5;
        in = 4'b1z00; #5;

        $finish;
    end

endmodule

