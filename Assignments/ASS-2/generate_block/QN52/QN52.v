module full_adder(
    input a, b, cin,
    output sum, cout
);
    assign sum  = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);
endmodule


module ripple_carry_adder;

    reg  [3:0] A, B;
    reg  cin;
    wire [3:0] SUM;
    wire [4:0] CARRY;

    assign CARRY[0] = cin;

    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin : adder_stage
            full_adder FA (
                .a(A[i]),
                .b(B[i]),
                .cin(CARRY[i]),
                .sum(SUM[i]),
                .cout(CARRY[i+1])
            );
        end
    endgenerate

    initial begin
        $monitor("Time=%0t A=%b B=%b cin=%b SUM=%b cout=%b",
                 $time, A, B, cin, SUM, CARRY[4]);

        A = 4'b0101; B = 4'b0011; cin = 0; #5;
        A = 4'b1111; B = 4'b0001; cin = 0; #5;
        A = 4'b1010; B = 4'b0101; cin = 1; #5;

        $finish;
    end

endmodule

