## How it works

Four flip-flops hold a binary count on outputs 3 through 0, with output 0 as the least significant bit. Each rising clock edge increments the count modulo 16. If reset is low at the edge, the counter loads zero. Outputs 7 through 4 are tied low. The dedicated data inputs and bidirectional pins are unused.

## How to test

Select the project and use a manual clock, or a slow clock such as 1 Hz to see individual counts. Hold reset low for one rising edge. All four count outputs should be low. Release reset and pulse the clock. The first three readings are 0001, 0010 and 0011. The fifteenth pulse gives 1111 and the sixteenth gives 0000. Assert reset partway through a count and check that the outputs clear on the next rising edge.

In Wokwi the count outputs drive segments A through D of the display. Read the segments as four binary indicators, with A representing 1 and D representing 8.

## External hardware

The Wokwi project includes the clock, reset button and display. On a demo board, use the onboard controls and output indicators.
