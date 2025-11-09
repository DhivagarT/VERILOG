module top_module (input x, input y, output z);
     wire A_IA1,B_IB1,A_IA2,B_IB2,a,b;
    
    assign A_IA1=(x ^ y) & x;
    assign B_IB1=x ~^ y;
    assign A_IA2=(x ^ y) & x;
    assign B_IB2=x ~^ y;
    
    assign a=A_IA1 | B_IB1;
    assign b=A_IA2 & B_IB2;
    
    assign z=a ^ b;
    

endmodule
