module parity_for;
    reg [7:0] data;
    integer i;
    reg parity;

    initial begin
        data = 8'b10110011; // Example 8-bit input
        parity = 0;

        for (i = 0; i < 8; i = i + 1) begin
            parity = parity ^ data[i]; // XOR each bit to compute parity
        end

        $display("Data = %b, Parity = %b", data, parity);
        $finish;
    end
endmodule

