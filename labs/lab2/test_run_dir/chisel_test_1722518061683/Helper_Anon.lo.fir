FIRRTL version 1.2.0
circuit Helper_Anon :
  module Helper_Anon :
    input clock : Clock
    input reset : UInt<1>
    input io_in1 : UInt<4> @[cmd30.sc 3:24]
    input io_in2 : UInt<4> @[cmd30.sc 3:24]
    output io_out : UInt<4> @[cmd30.sc 3:24]

    node _io_out_T = add(io_in1, io_in2) @[cmd29.sc 2:13]
    node _io_out_T_1 = tail(_io_out_T, 1) @[cmd29.sc 2:13]
    io_out <= _io_out_T_1 @[cmd30.sc 8:20]
