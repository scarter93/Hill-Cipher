library verilog;
use verilog.vl_types.all;
entity matrix_mult_struct_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        k11             : in     vl_logic_vector(3 downto 0);
        k12             : in     vl_logic_vector(3 downto 0);
        k13             : in     vl_logic_vector(3 downto 0);
        k21             : in     vl_logic_vector(3 downto 0);
        k22             : in     vl_logic_vector(3 downto 0);
        k23             : in     vl_logic_vector(3 downto 0);
        k31             : in     vl_logic_vector(3 downto 0);
        k32             : in     vl_logic_vector(3 downto 0);
        k33             : in     vl_logic_vector(3 downto 0);
        p1              : in     vl_logic_vector(3 downto 0);
        p2              : in     vl_logic_vector(3 downto 0);
        p3              : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end matrix_mult_struct_vlg_sample_tst;
