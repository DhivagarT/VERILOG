module asynch_down_counter_tb;

reg [3:0]d;
reg clk;
reg rst;

wire [3:0]q;

asynch_down_counter dut(d,clk,rst,q);

initial rst=0;
always #2 clk=~clk;

initial begin
        $monitor("d=%b clk=%b rst=%b q=%b",d,clk,rst,q);
        $dumpfile("asynch_down_counter_wave.vcd");
        $dumpvars(0,asynch_down_counter_tb);

        clk=0;
        #5 rst =1;

        d=$random;
        #30;
        $finish;
end
endmodule

