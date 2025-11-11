module full_add(input a,b,cin,output cout,sum);
    assign sum=a^b^cin;
    assign cout=(a&b)|(b&cin)|(a&cin);
endmodule

module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    wire [99:0]count;
    full_add fa_0(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.cout(count[0])); 
    genvar i;
    generate
        for(i=1;i<100;i=i+1)begin:binary_add
            full_add fa_(.a(a[i]),.b(b[i]),.cin(count[i-1]),.sum(sum[i]),.cout(count[i]));
        end
    endgenerate
    assign cout=count[99];

endmodule
