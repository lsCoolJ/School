library verilog;
use verilog.vl_types.all;
entity counter_lpm is
    port(
        aclr            : in     vl_logic;
        clock           : in     vl_logic;
        q               : out    vl_logic_vector(25 downto 0)
    );
end counter_lpm;
