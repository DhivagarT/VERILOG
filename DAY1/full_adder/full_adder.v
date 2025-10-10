module full_adder(input a,b,cin,output sum,carry);
xor (a1,a,b);
xor (sum,a1,cin);
and (b1,a1,cin);
and (c1,a,b);
or (carry,b1,c1);

endmodule
