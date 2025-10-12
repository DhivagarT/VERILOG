module FullA_USING_2HalfA(sum,carry,a,b,c);
input a,b,c;
output sum,carry;
wire x,y,z;

assign x=a^b;
assign y=x&c;
assign z=a&b;
assign sum=a^b^c;
assign carry=y|z;

endmodule
