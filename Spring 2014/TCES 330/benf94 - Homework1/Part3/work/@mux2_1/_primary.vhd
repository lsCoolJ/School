library verilog;
use verilog.vl_types.all;
entity Mux2_1 is
    port(
        X               : in     vl_logic;
        Y               : in     vl_logic;
        S               : in     vl_logic;
        F               : out    vl_logic
    );
end Mux2_1;
