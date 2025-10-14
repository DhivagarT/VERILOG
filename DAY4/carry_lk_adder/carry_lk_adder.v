module carry_lk_adder (input [3:0] a,input [3:0] b,input cin,output [3:0] s,output cout);
wire [3:0]v;
wire [3:0]m;
wire [3:0]c;
assign v= a^b;
assign m= a&b;

assign s = v^c;
assign c[0] = cin;
assign c[1] = m[0] | (v[0] & c[0]);
assign c[2] = m[1] | (v[1] & m[0]) | (v[1] & v[0] & c[0]);
assign c[3] = m[2] | (v[2] & m[1]) | (v[2] & v[1] & m[0]) | (v[2] & v[1] & v[0] & c[0]);
assign cout = m[3] | (v[3] & m[2]) | (v[3] & v[2] & m[1]) | (v[3] & v[2] & v[1] & m[0]) | (v[3] & v[2] & v[1] & v[0] & c[0]);
endmodule


