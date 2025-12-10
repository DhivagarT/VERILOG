module single_port_ram #(
    parameter ADDR_WIDTH = 4,
    parameter DATA_WIDTH = 8,
    parameter DEPTH      = 16
)(
    input                       clk,
    input                       we,
    input      [ADDR_WIDTH-1:0] addr,
    input      [DATA_WIDTH-1:0] din,
    output reg [DATA_WIDTH-1:0] dout
);

    // Memory array
    reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];

    // Synchronous write + synchronous read
    always @(posedge clk) begin
        if (we)
            mem[addr] <= din;   // Write
        dout <= mem[addr];      // Read
    end

endmodule


