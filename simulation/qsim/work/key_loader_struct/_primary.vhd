library verilog;
use verilog.vl_types.all;
entity key_loader_struct is
    port(
        p1              : in     vl_logic_vector(3 downto 0);
        p2              : in     vl_logic_vector(3 downto 0);
        p3              : in     vl_logic_vector(3 downto 0);
        load_key        : in     vl_logic;
        clk             : in     vl_logic;
        k11             : out    vl_logic_vector(3 downto 0);
        k12             : out    vl_logic_vector(3 downto 0);
        k13             : out    vl_logic_vector(3 downto 0);
        k21             : out    vl_logic_vector(3 downto 0);
        k22             : out    vl_logic_vector(3 downto 0);
        k23             : out    vl_logic_vector(3 downto 0);
        k31             : out    vl_logic_vector(3 downto 0);
        k32             : out    vl_logic_vector(3 downto 0);
        k33             : out    vl_logic_vector(3 downto 0)
    );
end key_loader_struct;
