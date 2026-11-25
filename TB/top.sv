# code for Top Module
  ...
  module top;

   // import ram_test_pkg
        import ram_test_pkg::*;
   // import the UVM package
        import uvm_pkg::*;
        // include uvm_macros.svh file
   // Generate clock signal
        bit clock;
        always
                #10 clock=!clock;

   // Instantiate ram_if with clock as input
        ram_if in0(clock);

   // Instantiate rtl ram_chip and pass the interface instance as argument
    ram_chip ch(in0);

   // In initial block
   initial
        begin
                `ifdef VCS
                $fsdbDumpvars(0, top);
                `endif

                //set the virtual interface in to config database "vif" using the uvm_config_db
                uvm_config_db #(virtual ram_if)::set(null,"*","vif",in0);
                // Call run_test
                run_test();
        end

endmodule
...
