//Asynchronous FIFO
module Asynchronous_fifo #(
    parameter depth = 32,
    parameter width = 8
)(
    input wr_clk, wr_rst_n, wr_enb,
    input [width-1:0] wr_data_in,
    input rd_clk, rd_rst_n, rd_enb,
    output [width-1:0] rd_data_out, 
    output wr_full,     
    output rd_empty     
);

    localparam depth_log = $clog2(depth); // Corrected function name

    reg [width-1:0] mem [0:depth-1];
    reg [depth_log:0] wr_pntr, rd_pntr;
    wire [depth_log:0] wr_gpntr, rd_gpntr;

    // Synchronizer registers
    reg [depth_log:0] rd_pnt_g1, rd_pnt_g2;
    reg [depth_log:0] wr_pnt_g1, wr_pnt_g2;

    // Write Domain 
    always @(posedge wr_clk or negedge wr_rst_n) begin
        if (!wr_rst_n)
            wr_pntr <= 0;
        else if (wr_enb && !wr_full) begin
            mem[wr_pntr[depth_log-1:0]] <= wr_data_in;
            wr_pntr <= wr_pntr + 1'b1;
        end
    end

    // Binary to Gray conversion
    assign wr_gpntr = (wr_pntr >> 1) ^ wr_pntr;

    // --- Read Domain ---
    // Note: To use 'assign' for rd_data_out, we make memory read combinational
    assign rd_data_out = mem[rd_pntr[depth_log-1:0]];

    always @(posedge rd_clk or negedge rd_rst_n) begin
        if (!rd_rst_n)
            rd_pntr <= 0;
        else if (rd_enb && !rd_empty) begin
            rd_pntr <= rd_pntr + 1'b1;
        end
    end

    // Binary to Gray conversion
    assign rd_gpntr = (rd_pntr >> 1) ^ rd_pntr;

    // --- 2-Stage Synchronizers (Clock Domain Crossing) ---

    // Synchronize Read Pointer into Write Domain
    always @(posedge wr_clk or negedge wr_rst_n) begin
        if (!wr_rst_n)
            {rd_pnt_g2, rd_pnt_g1} <= 0;
        else
            {rd_pnt_g2, rd_pnt_g1} <= {rd_pnt_g1, rd_gpntr}; // Correct shift direction
    end

    // Synchronize Write Pointer into Read Domain
    always @(posedge rd_clk or negedge rd_rst_n) begin
        if (!wr_rst_n)
            {wr_pnt_g2, wr_pnt_g1} <= 0;
        else
            {wr_pnt_g2, wr_pnt_g1} <= {wr_pnt_g1, wr_gpntr}; // Correct shift direction
    end

    
    // Empty: Current Read Gray Pointer matches Synchronized Write Gray Pointer
    assign rd_empty = (rd_gpntr == wr_pnt_g2);

    // Full: Gray code wrap-around logic
    assign wr_full  = (wr_gpntr == {~rd_pnt_g2[depth_log:depth_log-1], rd_pnt_g2[depth_log-2:0]});

endmodule
