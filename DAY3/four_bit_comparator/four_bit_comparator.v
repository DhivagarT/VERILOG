module four_bit_comparator(x,y,z,a0,a1,b0,b1);
input a0,a1,b0,b1;
output x,y,z;

assign x= (a1 & ~b1)|(a0 & ~b1 & ~b0)|(a1 &a0 & ~b0);
assign y= (~a1 & b1)|(~a1 & ~a0 & b0)|(~a0 & b1 &b0);
assign z= (a1 ~^ b1)&(a0 ~^ b0);

endmodule

