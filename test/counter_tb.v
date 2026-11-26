module counter_tb;
  reg clk = 0, rst_n = 0;
  wire [7:0] count;
  integer i;
  tt_um_wokwi_481736260616826881 dut (
    .clk(clk), .rst_n(rst_n), .ena(1'b1), .ui_in(8'd0), .uio_in(8'd0),
    .uo_out(count), .uio_out(), .uio_oe()
  );

  task tick(input [7:0] expected);
    begin
      #5 clk = 1;
      #1 if (count !== expected) $fatal(1, "expected %0d, observed %0d", expected, count);
      #4 clk = 0;
    end
  endtask

  initial begin
    tick(0);
    rst_n = 1;
    for (i = 1; i <= 19; i = i + 1) tick(i % 16);
    rst_n = 0;
    #1 if (count !== 3) $fatal(1, "reset changed the count before the rising edge");
    tick(0);
    tick(0);
    rst_n = 1;
    tick(1);
    $display("Counter passed reset, count, wraparound and restart checks.");
    $finish;
  end
endmodule
