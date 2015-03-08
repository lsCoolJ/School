library verilog;
use verilog.vl_types.all;
entity CountdownTimer is
    port(
        Clock           : in     vl_logic;
        Reset           : in     vl_logic;
        ResetValue      : in     vl_logic_vector(31 downto 0);
        Pulse           : out    vl_logic
    );
end CountdownTimer;
