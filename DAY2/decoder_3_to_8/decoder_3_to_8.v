module decoder_3_to_8(o1,o2,o3,o4,o5,o6,o7,o8,a,b,c);
input a,b,c;
output o1,o2,o3,o4,o5,o6,o7,o8;

assign o1= ~a&~b&~c;
assign o2= ~a&~b&c;
assign o3= ~a&b&~c;
assign o4= ~a&b&c;
assign o5= a&~b&~c;
assign o6= a&~b&c;
assign o7= a&b&~c;
assign o8= a&b&c;

endmodule
