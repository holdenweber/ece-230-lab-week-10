module multiplexer(
    input [1:0] Select,
    input [7:0] A,B,C,D,
    output [7:0] MUX
    );
    
assign MUX = Select == 0 ? A: Select == 1 ? B: Select == 2 ? C: Select == 3 ? D : 0;
    
endmodule