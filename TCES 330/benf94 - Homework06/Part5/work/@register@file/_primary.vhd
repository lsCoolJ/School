library verilog;
use verilog.vl_types.all;
entity RegisterFile is
    port(
        W_data          : in     vl_logic_vector(15 downto 0);
        W_addr          : in     vl_logic_vector(3 downto 0);
        W_en            : in     vl_logic;
        Ra_addr         : in     vl_logic_vector(3 downto 0);
        Rb_addr         : in     vl_logic_vector(3 downto 0);
        Ra_en           : in     vl_logic;
        Rb_en           : in     vl_logic;
        Clk             : in     vl_logic;
        Rst             : in     vl_logic;
        Ra_data         : out    vl_logic_vector(15 downto 0);
        Rb_data         : out    vl_logic_vector(15 downto 0)
    );
end RegisterFile;
