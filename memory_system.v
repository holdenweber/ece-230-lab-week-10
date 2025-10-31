module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

    // Array of 8-bit vectors, stores byte memory
    wire [7:0] data_byte[3:0];
    wire [7:0] arr_vec[3:0]; 
    // Array of enable values per byte memory
    wire [3:0] enables;
    
    // Demultiplexer to set the correct enable
    demuxbit demux_enable(
        .data(store),
        .sel(addr[1:0]),
        .A(enables[0]),
        .B(enables[1]),
        .C(enables[2]),
        .D(enables[3])
    );
    
    demultiplexer demux_data(
        .data(data),
        .sel(addr[1:0]),
        .A(data_byte[0]),
        .B(data_byte[1]),
        .C(data_byte[2]),
        .D(data_byte[3])
    );
    
    // D-latches to assign values to the array vector based on which byte is selected and enabled
    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin
            byte_memory byte(
                .data(data_byte[i]),
                .store(enables[i]),
                .memory(arr_vec[i])
            );
        end
    endgenerate
    
    multiplexer mult(
        .Select(addr),
        .A(arr_vec[0]),
        .B(arr_vec[1]),
        .C(arr_vec[2]),
        .D(arr_vec[3]),
        .MUX(memory)
    );

endmodule
