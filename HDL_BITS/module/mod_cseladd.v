module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0]sum_low,sum_high0,sum_high1;
    wire cout_low;
    add16 lower(.a(a[15:0]),.b(b[15:0]),.sum(sum_low),.cin(1'b0),.cout(cout_low));
    add16 upper0(.a(a[31:16]),.b(b[31:16]),.sum(sum_high0),.cin(1'b0),.cout());
    add16 upper1(.a(a[31:16]),.b(b[31:16]),.sum(sum_high1),.cin(1'b1),.cout());
    
    assign sum[15:0]= sum_low;
    assign sum[31:16]= cout_low? sum_high1:sum_high0;
    
endmodule
