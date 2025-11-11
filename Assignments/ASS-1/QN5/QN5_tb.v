module eight_to_one_mux_tb;
reg [7:0] a;
reg [2:0] s;
wire out;

eight_to_one_mux dut(a, s, out);

initial begin
    $dumpfile("eight_to_one_mux.vcd");
    $dumpvars(0, eight_to_one_mux_tb);
    $monitor("Time=%0t | a=%0b | s=%0b | out=%0b", $time, a, s, out);

    a = 8'b01011010;
    s = 3'b000;

    repeat (8) begin
        #5 s = s + 1;
    end

    #5 $finish;
end
endmodule



 
