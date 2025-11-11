module ALU_4bit(input [3:0]a,b,input [1:0]s,output reg [3:0]y);

wire sum,sub,and_gate,or_gate;

xor (sum,a,b);
and (and_gate,a,b);
xor (sub,a,b);
or (or_gate,a,b);

assign y[0]= sum;
assign y[1]= and_gate;
assign y[2]= sub;
assign y[3]= or_gate;
endmodule


