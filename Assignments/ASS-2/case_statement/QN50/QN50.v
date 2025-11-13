module casex_issue;

    reg [3:0] opcode;
    reg [7:0] result;

    always @(*) begin
        casex(opcode)
            4'd8:  result = 8'd10;
            4'b1x00: result = 8'd20;
            4'd9:  result = 8'd30;
            default: result = 8'd99;
        endcase
    end

    initial begin
        $monitor("Time=%0t opcode=%0d (%b) result=%0d",
                 $time, opcode, opcode, result);

        opcode = 4'd8;  #5;
        opcode = 4'd9;  #5;
        opcode = 4'd12; #5;  
        opcode = 4'd4;  #5;  
        opcode = 4'b1x00; #5;

        $finish;
    end

endmodule

