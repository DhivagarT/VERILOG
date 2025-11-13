module serial_add_task;
    reg [3:0] a, b;
    reg [4:0] sum;
    integer i;

    task serial_add;
        input [3:0] x, y;
        output [4:0] result;
        reg carry;
        integer j;
        begin
            result = 0;
            carry = 0;
            for (j = 0; j < 4; j = j + 1) begin
                result[j] = x[j] ^ y[j] ^ carry;
                carry = (x[j] & y[j]) | (x[j] & carry) | (y[j] & carry);
            end
            result[4] = carry;
        end
    endtask

    initial begin
        a = 4'b1011;
        b = 4'b0110;
        serial_add(a, b, sum);
        $display("a = %b, b = %b, sum = %b", a, b, sum);

        a = 4'b1100;
        b = 4'b1010;
        serial_add(a, b, sum);
        $display("a = %b, b = %b, sum = %b", a, b, sum);

        $finish;
    end
endmodule

