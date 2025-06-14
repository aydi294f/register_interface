// reg_pkg.sv
`ifndef REG_PKG_SV
`define REG_PKG_SV

// Include the register-bus typedef macros
`include "register_interface/typedef.svh"

package reg_pkg;
  // Package-level parameters: adjust these to your system's widths
  parameter int unsigned AddrWidth = 32;
  parameter int unsigned DataWidth = 32;

  // Local typedefs for address, data, and strobe widths
  typedef logic [AddrWidth-1:0] addr_t;
  typedef logic [DataWidth-1:0] data_t;
  typedef logic [DataWidth/8-1:0] strb_t;

  // Generate reg_req_t and reg_rsp_t using the macros
  `REG_BUS_TYPEDEF_ALL(reg, addr_t, data_t, strb_t)

endpackage: reg_pkg
`endif // REG_PKG_SV
