//Bcdadd4
module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    
    
    wire [3:0] ccout;
    
   bcd_fadd add0 (a[3:0],  b[3:0],  cin,     ccout[0],sum[3:0]);
   bcd_fadd add1 (a[7:4],  b[7:4],  ccout[0],ccout[1],sum[7:4]);
   bcd_fadd add2 (a[11:8], b[11:8], ccout[1],ccout[2],sum[11:8]);
   bcd_fadd add3 (a[15:12],b[15:12],ccout[2],ccout[3],sum[15:12]);
   
   assign cout = ccout[3];  

endmodule

