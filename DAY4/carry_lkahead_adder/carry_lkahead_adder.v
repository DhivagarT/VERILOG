module carry_lkahead_adder(input [3:0]a,input [3:0]b,input cin,output [3:0]s,output [3:0]c);
wire [3:0]v;
wire [3:0]f;


assign v= a^b;
assign f= a&b;

assign c[0] = f[0] | (v[0] & cin);
assign c[1] = f[1] | (v[1] & f[0]) | (v[1] & v[0] & cin);
assign c[2] = f[2] | (v[2] & f[1]) | (v[2] & v[1] & f[0]) | (v[2] & v[1] & v[0] & cin);
assign c[3] = f[3] | (v[3] & f[2]) | (v[3] & v[2] & f[1]) | (v[3] & v[2] & v[1] & f[0]) | (v[3] & v[2] & v[1] & v[0] & cin);

assign s[0]=v[0]^cin;                                                                                                                                       assign s[1]=v[1]^c[0];
assign s[2]=v[2]^c[1];
assign s[3]=v[3]^c[2];

endmodule
