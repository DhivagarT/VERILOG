module two_out_demux(o1,o2,a,s);
input a;
input s;
output o1,o2;

assign o1=a&~s;
assign o2=a&s;
endmodule


