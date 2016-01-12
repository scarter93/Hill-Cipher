library verilog;
use verilog.vl_types.all;
entity matrix_mult_struct_vlg_check_tst is
    port(
        c1              : in     vl_logic_vector(3 downto 0);
        c2              : in     vl_logic_vector(3 downto 0);
        c3              : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end matrix_mult_struct_vlg_check_tst;
