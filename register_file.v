module register_file (
    input clk,
    input reg_write,
    input [4:0] rs1, rs2, rd,
    input [31:0] write_data,
    output [31:0] read_data1,
    output [31:0] read_data2
);

reg [31:0] registers [31:0];

// Read
assign read_data1 = registers[rs1];
assign read_data2 = registers[rs2];

// Write
always @(posedge clk) begin
    if (reg_write && rd != 0)
        registers[rd] <= write_data;
end

endmodule
