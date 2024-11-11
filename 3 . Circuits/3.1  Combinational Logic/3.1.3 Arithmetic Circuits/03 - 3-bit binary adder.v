//Adder3
module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    
   
    full_adder FA1 (a[0],b[0],cin,sum[0],cout[0]);
    full_adder FA2 (a[1],b[1],cout[0],sum[1],cout[1]);
    full_adder FA3 (a[2],b[2],cout[1],sum[2],cout[2]);
    
endmodule
    
    
    module full_adder(input a,b,cin,
                      output sum,carry);
        
        assign sum = a ^ b ^ cin;
        assign carry = a&b | b&cin | cin&a ;
        
    endmodule


