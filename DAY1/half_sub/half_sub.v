module half_sub(input a,b,output borrow,diff);
assign diff=a^b;
assign borrow=~a*b;
endmodule



