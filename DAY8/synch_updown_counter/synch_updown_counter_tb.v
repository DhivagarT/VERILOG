module synch_updown_counter_tb;
reg [3:0]d;
reg clk,rst,enb,up_down;

wire [3:0]q;

synch_updown_counter dut(d,clk,rst,enb,up_down,q);

initial rst=0;
always #2 clk=~clk;

initial begin
        $monitor("d=%b clk=%b rst=%b enb=%b up_down=%b q=%b",d,clk,rst,enb,up_down,q);
        $dumpfile("synch_updoen_counter_wave.vcd");
        $dumpvars(0,synch_updown_counter_tb);

        clk=0;
        #4 rst=1;

        enb=0;
	up_down=1;

        #10 enb=1;
        #11 up_down=0;
        d=4'b0001;
        #15;
        $stop;
end
endmodule
