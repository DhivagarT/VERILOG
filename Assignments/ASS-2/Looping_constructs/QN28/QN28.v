module counter;
reg [3:0]data;
integer i;
integer count;

initial begin
	data=4'b1101;
	i=0;
	count=0;

        for (i = 0; i < 4; i = i + 1) begin
            if (data[i] == 1)
                count = count + 1;
        end

        $display("Data = %b, Number of 1s = %0d", data, count);
        $finish;
    end
endmodule
       	       


