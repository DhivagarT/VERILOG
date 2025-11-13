module bus_decoder;

    reg [2:0] addr;
    reg [7:0] data;

    always @(*) begin
        case(addr)
            3'b000: data = 8'd0;
            3'b001: data = 8'd1;
            3'b010: data = 8'd2;
            3'b011: data = 8'd3;
            3'b100: data = 8'd4;
            3'b101: data = 8'd5;
            3'b110: data = 8'd6;
            3'b111: data = 8'd7;
            default: data = 8'd0;
        endcase
    end

    initial begin
        $monitor("Time=%0t addr=%0d data=%0d", $time, addr, data);

        addr = 3'd0; #5;
        addr = 3'd1; #5;
        addr = 3'd2; #5;
        addr = 3'd3; #5;
        addr = 3'dx; #5;

        $finish;
    end

endmodule

