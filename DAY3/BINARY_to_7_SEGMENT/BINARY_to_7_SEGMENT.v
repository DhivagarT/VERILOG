module BINARY_to_7_SEGMENT(d,b);
input [3:0]b;
output reg[6:0]d;

always@(*)begin
 case(b)

4'b0000:d=7'b1111110;
4'b0001:d=7'b0110000;
4'b0010:d=7'b1101101;
4'b0011:d=7'b1111001;
4'b0100:d=7'b0111011;
4'b0101:d=7'b1011111;
4'b0110:d=7'b1110000;
4'b0111:d=7'b1111000;
4'b1000:d=7'b1111111;
4'b1001:d=7'b1111011;
default:d=7'b0000001;
endcase
end
endmodule









