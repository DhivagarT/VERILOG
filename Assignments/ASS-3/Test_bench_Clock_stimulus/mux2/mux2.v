module mux2(
    input  a, b,
    input  sel,
    output y
);

assign y = sel ? b : a;

endmodule

