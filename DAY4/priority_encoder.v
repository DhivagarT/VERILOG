module priority_encoder(input d3,d2,d1,d0,output [1:0]a,output v);

assign v= d3|d2|d1|d0;

assign a= (d3)? 2'b11: (d2)? 2'b10: (d1)? 2'b01: (d0)? 2'b00: 2'bxx;
endmodule
   
