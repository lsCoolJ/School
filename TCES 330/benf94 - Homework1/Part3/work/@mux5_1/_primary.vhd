library verilog;
use verilog.vl_types.all;
entity Mux5_1 is
    port(
        U               : in     vl_logic;
        V               : in     vl_logic;
        W               : in     vl_logic;
        X               : in     vl_logic;
        Y               : in     vl_logic;
        S               : in     vl_logic_vector(2 downto 0);
        M               : out    vl_logic
    );
end Mux5_1;
