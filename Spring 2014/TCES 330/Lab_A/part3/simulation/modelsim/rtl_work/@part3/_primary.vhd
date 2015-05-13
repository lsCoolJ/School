library verilog;
use verilog.vl_types.all;
entity Part3 is
    port(
        KEY             : in     vl_logic_vector(0 downto 0);
        SW              : in     vl_logic_vector(1 downto 0);
        HEX3            : out    vl_logic_vector(0 to 6);
        HEX2            : out    vl_logic_vector(0 to 6);
        HEX1            : out    vl_logic_vector(0 to 6);
        HEX0            : out    vl_logic_vector(0 to 6)
    );
end Part3;
