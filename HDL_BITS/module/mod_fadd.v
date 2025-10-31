module add1 ( input a, input b, input cin,   output sum, output cout );
    wire x,y,z;
    assign y= a & b;
    assign x= a ^ b;
    assign z= x & cin;
    assign sum= x ^ cin;
    assign cout= z | y;
endmodule
    
  module top_module (
    input  [31:0] a,
    input  [31:0] b,
    output [31:0] sum
);
    wire cout16; 
    add16 lower_adder (.a(a[15:0]),.b(b[15:0]),.cin(1'b0),.sum(sum[15:0]),.cout(cout16));

    add16 upper_adder (.a(a[31:16]),.b(b[31:16]),.cin(cout16),.sum(sum[31:16]),.cout());
endmodule
