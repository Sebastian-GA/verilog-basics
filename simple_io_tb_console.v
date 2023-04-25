/*  Simple I/O example for LabsLand's FPGA experiments
    Author: Sebastian Garcia
    Date: April 2021
*/

module simple_io_tb_console();

reg [2:0] switches;
reg [2:1] buttons;
wire [9:0] leds;

simple_io device_under_test (
    .SW(switches),
    .KEY(buttons),
    .LEDR(leds)
);

// ---------- TestBench ----------  //
initial begin
    repeat (10) begin
        switches = $urandom;
        buttons = $urandom;
        #50;
    end
    $finish;
end

// ---------- Console ----------  //
initial begin
  $display("|-----|-----|------------|");
  $display("|  SW | KEY |    LEDR    |");
  $display("|-----|-----|------------|");
  $monitor("| %b |  %b | %b |", switches, buttons, leds);
end
endmodule
