//Ringer
module top_module (
    input ring,
    input vibrate_mode,
    output ringer,       
    output motor         
);
    
    assign ringer = ring & ~vibrate_mode;
    assign motor = vibrate_mode & ring;

endmodule

