library verilog;
use verilog.vl_types.all;
entity TFFx is
    port(
        T               : in     vl_logic;
        Clk             : in     vl_logic;
        ClrN            : in     vl_logic;
        Q               : out    vl_logic;
        QN              : out    vl_logic
    );
end TFFx;
