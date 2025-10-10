module full_sub(input a,b,c,output diff,borr);
assign diff=a^b^c;
assign borr=(~a&b)|(c&~a)|(c&~b);
endmodule
