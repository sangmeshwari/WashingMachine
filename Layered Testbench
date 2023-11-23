`include "interface.sv"
`include "test.sv"
module tbench_top;
intf i_intf();
test t(i_intf);
washing_machine DUT(.rst(i_intf.rst),.clk(i_intf.rst),.power(i_intf.power),.fill_water(i_intf.fill_water),.add_det(i_intf.add_det),.out(i_intf.out));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
