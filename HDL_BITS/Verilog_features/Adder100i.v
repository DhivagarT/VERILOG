//100 bit Binary adder
module full_adder(input a,b,cin,output sum,cout);
    wire x,y,z;

    assign x=a & b;
    assign y=a ^ b;
    assign z=y & cin;
    assign sum=y ^ cin;
    assign cout=z | x;
endmodule

module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    wire [99:0]carry;
    
    
    full_adder fa0(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.cout(carry[0]));
 
    genvar i;
    generate
        for(i=1;i<100;i=i+1)begin:adder
            full_adder fa(.a(a[i]),.b(b[i]),.cin(carry[i-1]),.sum(sum[i]),.cout(carry[i]));
        end
    endgenerate
    assign cout=carry;
                       
endmodule
