library verilog;
use verilog.vl_types.all;
entity DragSM is
    port(
        Rst             : in     vl_logic;
        PSB             : in     vl_logic;
        SB              : in     vl_logic;
        Clock           : in     vl_logic;
        PSL             : out    vl_logic_vector(0 downto 0);
        SL              : out    vl_logic_vector(0 downto 0);
        A1              : out    vl_logic_vector(0 downto 0);
        A2              : out    vl_logic_vector(0 downto 0);
        A3              : out    vl_logic_vector(0 downto 0);
        GRN             : out    vl_logic_vector(0 downto 0);
        RED             : out    vl_logic_vector(0 downto 0)
    );
end DragSM;
