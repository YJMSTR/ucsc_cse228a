FIRRTL version 1.2.0
circuit Helper_Anon :
  module Helper_Anon :
    input clock : Clock
    input reset : UInt<1>
    input io_in1 : UInt<4> @[cmd32.sc 3:24]
    input io_in2 : UInt<4> @[cmd32.sc 3:24]
    output io_out : UInt<5> @[cmd32.sc 3:24]

    node _io_out_WIRE = pad(io_in1, 5) @[cmd31.sc 2:{15,15}]
    node _io_out_WIRE_1 = pad(io_in2, 5) @[cmd31.sc 2:{39,39}]
    node _io_out_T = add(_io_out_WIRE, _io_out_WIRE_1) @[cmd31.sc 2:27]
    node _io_out_T_1 = tail(_io_out_T, 1) @[cmd31.sc 2:27]
    io_out <= _io_out_T_1 @[cmd32.sc 8:20]
