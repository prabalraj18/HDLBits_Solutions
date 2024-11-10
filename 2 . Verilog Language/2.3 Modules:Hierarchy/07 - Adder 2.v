//Module fadd
module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0]sum1,sum2;
    wire out1,out2,in1;
    assign in1 = 1'b0;
    
    add16 inst1 (a[15:0],b[15:0],in1,sum1,out1);
    add16 inst2 (a[31:16],b[31:16],out1,sum2,out2);
    assign sum = {sum2,sum1};
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );
    assign sum = a ^ b ^ cin;
    assign cout = a&b | b&cin | cin&a ;
    
endmodule

