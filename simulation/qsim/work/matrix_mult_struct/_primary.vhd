library verilog;
use verilog.vl_types.all;
entity matrix_mult_struct is
    port(
        p1              : in     vl_logic_vector(3 downto 0);
        p2              : in     vl_logic_vector(3 downto 0);
        p3              : in     vl_logic_vector(3 downto 0);
        k11             : in     vl_logic_vector(3 downto 0);
        k12             : in     vl_logic_vector(3 downto 0);
        k13             : in     vl_logic_vector(3 downto 0);
        k21             : in     vl_logic_vector(3 downto 0);
        k22             : in     vl_logic_vector(3 downto 0);
        k23             : in     vl_logic_vector(3 downto 0);
        k31             : in     vl_logic_vector(3 downto 0);
        k32             : in     vl_logic_vector(3 downto 0);
        k33             : in     vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        c1              : out    vl_logic_vector(3 downto 0);
        c2              : out    vl_logic_vector(3 downto 0);
        c3              : out    vl_logic_vector(3 downto 0)
    );
end matrix_mult_struct;
