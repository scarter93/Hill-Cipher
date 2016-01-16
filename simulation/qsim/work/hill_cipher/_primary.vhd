library verilog;
use verilog.vl_types.all;
entity hill_cipher is
    port(
        p1              : in     vl_logic_vector(3 downto 0);
        p2              : in     vl_logic_vector(3 downto 0);
        p3              : in     vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        load_key        : in     vl_logic;
        encrypt         : in     vl_logic;
        c1              : out    vl_logic_vector(3 downto 0);
        c2              : out    vl_logic_vector(3 downto 0);
        c3              : out    vl_logic_vector(3 downto 0)
    );
end hill_cipher;
