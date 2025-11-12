module mux4_if (
    input [3:0] a,   // 4 data inputs
    input [1:0] sel, // 2-bit select line
    output reg y
);
    always @(*) begin
        if (sel == 2'b00)
            y = a[0];
        else if (sel == 2'b01)
            y = a[1];
        else if (sel == 2'b10)
            y = a[2];
        else
            y = a[3];
    end
endmodule


module tb_mux4_if;
    reg [3:0] a;
    reg [1:0] sel;
    wire y;

    mux4_if uut(a, sel, y);

    initial begin
        a = 4'b1010;  // input values
        sel = 2'b00;

        repeat (8) begin
            #2 sel = sel + 1;
        end
    end

    initial begin
        $monitor("Time=%0t | a=%b sel=%b y=%b", $time, a, sel, y);
        #20 $finish;
    end
endmodule

