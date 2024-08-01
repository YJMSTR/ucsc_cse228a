FIRRTL version 1.2.0
circuit Accumulator :
  module Accumulator :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<4> @[cmd11.sc 2:16]
    input io_en : UInt<1> @[cmd11.sc 2:16]
    output io_out : UInt<4> @[cmd11.sc 2:16]

    reg tot : UInt<4>, clock with :
      reset => (UInt<1>("h0"), tot) @[cmd11.sc 8:22]
    node _tot_T = add(tot, UInt<1>("h1")) @[cmd11.sc 10:20]
    node _tot_T_1 = tail(_tot_T, 1) @[cmd11.sc 10:20]
    node _GEN_0 = mux(io_en, _tot_T_1, tot) @[cmd11.sc 10:13 9:17 8:22]
    io_out <= tot @[cmd11.sc 12:12]
    tot <= mux(reset, UInt<4>("h0"), _GEN_0) @[cmd11.sc 8:{22,22}]
