//Popcount255
module top_module( 
    input [254:0] in,
    output [7:0] out );

    integer i ;
    always @ (*) begin
        out = 0;
           for(int i = 0 ; i < 255; i++)
               begin
                   if(in[i] == 1'b1)
                       begin 
                           out = out + 1;
                       end
                   else
                       begin
                           out = out;
                       end
               end
       end
  
endmodule

