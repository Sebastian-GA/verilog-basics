/*  3-bit sum calculator with 7-segment display
    Author: Sebastian Garcia
    Date: October 2021
*/

module circuito_sumador_con_7seg_labsland
(
    input [9:0] SW,
    output [6:0] HEX0
);

sum_calculator DUT(
    .num_A(SW[7:5]),
    .num_B(SW[2:0]),

    .num_selected({SW[9], SW[4]}),
    .display(HEX0)
);

endmodule
