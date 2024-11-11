//Exams/ece241 2013 q2
module top_module (
    input a,
    input b,
    input c,
    input d,
    output out_sop,
    output out_pos
); 
    
    assign out_sop =  (c&d) | (~a&~b&c&~d);
    assign out_pos =  c & (~b|d) & (~a|d);

endmodule

