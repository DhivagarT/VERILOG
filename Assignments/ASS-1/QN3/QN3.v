module FA_using_HA(input a,b,cin,output sum,carry);

wire m,n,o,p;

xor (m,a,b);
and (n,a,b);
xor (sum,m,cin);
and (o,m,cin);
or (carry,o,n);

endmodule
