module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 
    wire [8:0]c; 
    assign c[0] = 1'b0;
    assign {c[1], s[0]} = a[0] + b[0] + c[0];
    assign {c[2], s[1]} = a[1] + b[1] + c[1];
    assign {c[3], s[2]} = a[2] + b[2] + c[2];
    assign {c[4], s[3]} = a[3] + b[3] + c[3];
    assign {c[5], s[4]} = a[4] + b[4] + c[4];
    assign {c[6], s[5]} = a[5] + b[5] + c[5];
    assign {c[7], s[6]} = a[6] + b[6] + c[6];
    assign {c[8], s[7]} = a[7] + b[7] + c[7];
    
    assign overflow=c[7]^c[8];
    
endmodule
