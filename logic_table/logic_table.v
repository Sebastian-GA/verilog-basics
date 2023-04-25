/*  Example of a logic table implementation in Verilog
    Author: Sebastian Garcia
    Date: September 2021
*/

module logic_table (
    input A, B, C, D,
    output V, W, X, Y, Z
);

wire [3:0] inputs_grouped;
reg [4:0] outputs_grouped;

assign inputs_grouped = {A, B, C, D};

// Logic table
always @(*)
    case (inputs_grouped)
        4'd0:  outputs_grouped = 5'b10100;
        4'd1:  outputs_grouped = 5'b10011;
        4'd2:  outputs_grouped = 5'b10011;
        4'd3:  outputs_grouped = 5'b10010;
        4'd4:  outputs_grouped = 5'b10010;
        4'd5:  outputs_grouped = 5'b10001;
        4'd6:  outputs_grouped = 5'b10001;
        4'd7:  outputs_grouped = 5'b10000;
        4'd8:  outputs_grouped = 5'b10000;
        4'd9:  outputs_grouped = 5'b01111;
        4'd10: outputs_grouped = 5'b01111;
        4'd11: outputs_grouped = 5'b01110;
        4'd12: outputs_grouped = 5'b01110;
        4'd13: outputs_grouped = 5'b01101;
        4'd14: outputs_grouped = 5'b01101;
        4'd15: outputs_grouped = 5'b01100;
    endcase

assign V = outputs_grouped[4];
assign W = outputs_grouped[3];
assign X = outputs_grouped[2];
assign Y = outputs_grouped[1];
assign Z = outputs_grouped[0];

endmodule
