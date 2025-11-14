module mux4_function;
    reg [7:0] a, b, c, d;  
    reg [1:0] sel;
    reg [7:0] out;

    function [7:0] mux4;
        input [7:0] i0, i1, i2, i3;
        input [1:0] s;
        begin
            case (s)
                2'b00: mux4 = i0;
                2'b01: mux4 = i1;
                2'b10: mux4 = i2;
                2'b11: mux4 = i3;
            endcase
        end
    endfunction

    initial begin
        a = 10;
        b = 20;
        c = 30;
        d = 40;

        sel = 2'b10;
        out = mux4(a, b, c, d, sel);

        $display("sel=%b  out=%0d", sel, out);

        #10;
        $finish;
    end
endmodule

