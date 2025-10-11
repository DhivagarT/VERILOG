module four_mux(out,a,b,c,d,s0,s1);
input a,b,c,d;
input s0,s1;
output out;
assign out=(~s0&~s1&a)|(~s0&s1&b)|(s0&~s1&c)|(s0&s1&d);
endmodule
