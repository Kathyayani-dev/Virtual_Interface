# code for Dual Port RAM TB package
...
  package ram_test_pkg;

        // import the UVM package
        import uvm_pkg::*;
        // include the uvm_macros.svh
        //include the "tb_defs.sv","write_xtn.sv", "ram_wr_agent_config.sv",
        //"ram_wr_driver.sv", "ram_wr_monitor.sv","ram_wr_sequencer.sv",
        //"ram_wr_agent.sv", "ram_env.sv","ram_wr_seqs.sv", "ram_vtest_lib.sv"

        `include "uvm_macros.svh"

        `include "tb_defs.sv"
        `include "write_xtn.sv"
        `include "ram_wr_agent_config.sv"
        `include "ram_wr_driver.sv"
        `include "ram_wr_monitor.sv"
        `include "ram_wr_sequencer.sv"
        `include "ram_wr_agent.sv"
        `include "ram_env.sv"

        // Utility Sequences
        `include "ram_wr_seqs.sv"

        // Includes:
        `include "ram_vtest_lib.sv"


endpackage
...
