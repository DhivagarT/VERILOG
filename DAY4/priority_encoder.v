module priority_encoder(input d3,d2,d1,d0,output [1:0]a,output v);

assign v= d3|d2|d1|d0;
assign a[1] = d3 | (d2 & ~d3);
assign a[0] = d3 | (d1 & ~d3 & ~d2);

endmodule
   
