module two_inp_mux(c,a,b,s);
input a,b;
input s;
output c;
assign c=(~s&a)|(s&b);
endmodule

