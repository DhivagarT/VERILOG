//Question 2 — Design an 8:3 Priority Encoder in Verilog.

module parity_encoder(input [7:0]a,output [2:0]q,output v);

assign v=a[7]|a[6]|a[5]|a[4]|a[3]|a[2]|a[1]|a[0];

assign q=a[0]?3'd0:a[1]?3'd1:a[2]?3'd2:a[3]?3'd3:a[4]?3'd4:a[5]?3'd5:a[6]?3'd6:a[7]?3'd7;

endmodule



