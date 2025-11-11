module full_add(input x,y,cin,output cout,sum);
    assign sum=x^y^cin;
    assign cout=(x&y)|(y&cin)|(x&cin);
endmodule

module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
   
    wire [3:0]cout;
    
    full_add fa0(.x(x[0]),.y(y[0]),.cin(1'b0),.sum(sum[0]),.cout(cout[0]));
    genvar i;
    generate
        for(i=1;i<4;i=i+1)begin:fadd
            full_add fa0(.x(x[i]),.y(y[i]),.cin(cout[i-1]),.sum(sum[i]),.cout(cout[i]));
        end
    endgenerate
       
    assign sum[4]=cout[3];
endmodule
    
