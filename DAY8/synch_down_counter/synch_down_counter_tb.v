module synch_down_counter_tb;
reg [3:0]d;
reg clk,rst;

wire [3:0]q;

synch_down_counter dut(d,clk,rst,q);

initial rst=0;
always #2 clk=~clk;

initial begin
        $monitor("d=%b clk=%b rst=%b q=%b",d,clk,rst,q);
        $dumpfile("synch_down_counter_wave.vcd");
        $dumpvars(0,synch_down_counter_tb);

        clk=0;
        #4 rst=1;

        d=4'b0001;
        #25;
        $stop;
end
endmodule
