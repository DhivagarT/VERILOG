module  EXCESS_3_to_BINARY(a,z);
input [3:0]z;
output [3:0]a;

assign a= z - 4'b0011;

endmodule
