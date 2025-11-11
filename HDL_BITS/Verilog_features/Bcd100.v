module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    wire [99:0]carry_out; 
   
    bcd_fadd add0(.a(a[3:0]),.b(b[3:0]),.cin(cin),.sum(sum[3:0]),.cout(carry_out[0]));
    
    genvar i;
    generate
        for(i=1;i<100;i=i+1)begin:bcd_adder
            bcd_fadd add(.a(a[i*4+3:i*4]),.b(b[i*4+3:i*4]),.cin(carry_out[i-1]),.sum(sum[i*4+3:i*4]),.cout(carry_out[i]));
        end
    endgenerate
    assign cout=carry_out[99];
    
endmodule

 /*bcd_fadd add1(.a(a[399:300]),.b(b[399:300]),.cin(cin),.sum(sum[399:300]),.cout(carry_out[0]));
    bcd_fadd add2(.a(a[299:200]),.b(b[299:200]),.cin(carry_out[0]),.sum(sum[299:200]),.cout(carry_out[1]));
    bcd_fadd add3(.a(a[199:100]),.b(b[199:100]),.cin(carry_out[1]),.sum(sum[199:100]),.cout(carry_out[2]));
    bcd_fadd add4(.a(a[99:0]),.b(b[99:0]),.cin(carry_out[2]),.sum(sum[99:0]),.cout(carry_out[3]));
    
    assign cout=carry_out[3];
endmodule*/
