/*  Example of a logic table implementation in Verilog
    Author: Sebastian Garcia
    Date: September 2021
*/

module logic_table_labsland (
    input [3:0] SW,
    output [4:0] LEDR
);

logic_table DUT(
    .A(SW[3]),
    .B(SW[2]),
    .C(SW[1]),
    .D(SW[0]),
  
    .V(LEDR[4]),
    .W(LEDR[3]),
    .X(LEDR[2]),
    .Y(LEDR[1]),
    .Z(LEDR[0])
);

endmodule
