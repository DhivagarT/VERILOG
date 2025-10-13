module eight_bit_comparator(x,y,z,a,b);
input [7:0] a,b;
output x,y,z;

assign x= a>b;
assign y= a<b;
assign z= a==b;

endmodule

