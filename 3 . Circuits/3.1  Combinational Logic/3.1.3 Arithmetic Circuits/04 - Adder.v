//Exams/m2014 q4j
module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    
    wire [2:0]carry;
    wire zero ; 
    assign zero = 1'b0;
   
    FA fa1 (x[0] , y[0] , zero     , sum[0] ,carry[0]);
    FA fa2 (x[1] , y[1] , carry[0] , sum[1] ,carry[1]);
    FA fa3 (x[2] , y[2] , carry[1] , sum[2] ,carry[2]);
    FA fa4 (x[3] , y[3] , carry[2] , sum[3] ,sum[4]  );
    
endmodule

module FA(input a,b,cin,
          output sum,carry);
    
    assign sum = a ^ b ^ cin ;
    assign carry = a&b | b&cin | cin&a ;
endmodule

