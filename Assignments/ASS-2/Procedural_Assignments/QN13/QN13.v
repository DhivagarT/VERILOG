module alu_blocking;
    reg [3:0] A, B;
    reg [2:0] opcode;
    reg [3:0] Result;

    always @(*) begin
        case(opcode)
            3'b000: Result = A + B;
            3'b001: Result = A - B;
            3'b010: Result = A & B;
            3'b011: Result = A | B;
            3'b100: Result = A ^ B;
            3'b101: Result = ~A;
            3'b110: Result = A + 1;
            3'b111: Result = A - 1;
            default: Result = 4'b0000;
        endcase
    end

    initial begin
        $monitor("Time=%0t A=%b B=%b opcode=%b Result=%b",$time,A,B,opcode,Result);

        A = 4'b0011; B = 4'b0101; opcode = 3'b000; #5
        opcode = 3'b001; #5
        opcode = 3'b010; #5
        opcode = 3'b011; #5
        opcode = 3'b100; #5
        opcode = 3'b101; #5
        opcode = 3'b110; #5
        opcode = 3'b111; #5
        $finish;
    end
endmodule

