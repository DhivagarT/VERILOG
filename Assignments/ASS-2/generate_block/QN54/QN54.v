module data_bus_mux #(parameter N = 8) (
    input  [N-1:0] a, 
    input  [N-1:0] b,
    input   sel,
    output [N-1:0] y
);
    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin : mux_gen
            assign y[i] = sel ? b[i] : a[i];
        end
    endgenerate
endmodule


module tb_data_bus_mux;
    reg  [7:0] a, b;
    reg  sel;
    wire [7:0] y;

    data_bus_mux #(8) dut (.a(a), .b(b), .sel(sel), .y(y));

    initial begin
        $monitor("Time=%0t sel=%b a=%b b=%b y=%b", 
                 $time, sel, a, b, y);

        a = 8'b10101010; b = 8'b11001100; sel = 0; #5;
        sel = 1; #5;
        a = 8'b00001111; b = 8'b11110000; sel = 0; #5;
        sel = 1; #5;

        $finish;
    end
endmodule

