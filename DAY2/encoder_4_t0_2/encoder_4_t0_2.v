module encoder_4_t0_2(a,b,d3,d2,d1,d0);

output a,b;
input d3,d2,d1,d0;

assign a=d2|d3;
assign b=d1|d3;

endmodule

