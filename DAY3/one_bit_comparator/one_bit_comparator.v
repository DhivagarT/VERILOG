module one_bit_comparator(a,b,c,x,y);
input x,y;
output a,b,c;

assign a= ~x&y;
assign b= x&~y;
assign c= (~x&~y)|(x&y);

endmodule

