module decoder_2_to_4(o1,o2,o3,o4,a,b);
input a,b;
output o1,o2,o3,o4;

assign o1= ~a&~b;
assign o2= ~a&b;
assign o3= a&~b;
assign o4= a&b;

endmodule

