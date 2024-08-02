FIRRTL version 1.2.0
circuit MatrixSearch :
  module MatrixSearch :
    input clock : Clock
    input reset : UInt<1>
    input io_mat_0_0 : UInt<8> @[cmd11.sc 4:16]
    input io_mat_0_1 : UInt<8> @[cmd11.sc 4:16]
    input io_mat_1_0 : UInt<8> @[cmd11.sc 4:16]
    input io_mat_1_1 : UInt<8> @[cmd11.sc 4:16]
    input io_searchFor : UInt<8> @[cmd11.sc 4:16]
    output io_found : UInt<1> @[cmd11.sc 4:16]

    node res1_0 = eq(io_mat_0_0, io_searchFor) @[cmd11.sc 10:61]
    node res1_1 = eq(io_mat_0_1, io_searchFor) @[cmd11.sc 10:61]
    node res1_2 = eq(io_mat_1_0, io_searchFor) @[cmd11.sc 10:61]
    node res1_3 = eq(io_mat_1_1, io_searchFor) @[cmd11.sc 10:61]
    node _io_found_T = or(res1_0, res1_1) @[cmd11.sc 11:32]
    node _io_found_T_1 = or(_io_found_T, res1_2) @[cmd11.sc 11:32]
    node _io_found_T_2 = or(_io_found_T_1, res1_3) @[cmd11.sc 11:32]
    io_found <= _io_found_T_2 @[cmd11.sc 11:14]
