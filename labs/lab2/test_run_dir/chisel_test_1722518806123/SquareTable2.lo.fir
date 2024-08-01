FIRRTL version 1.2.0
circuit SquareTable2 :
  module SquareTable2 :
    input clock : Clock
    input reset : UInt<1>
    input io_x : UInt<4> @[cmd11.sc 2:16]
    output io_xSquared : UInt<7> @[cmd11.sc 2:16]

    node _io_xSquared_T = bits(io_x, 2, 0)
    node ROM_0 = UInt<7>("h0") @[cmd11.sc 9:{33,33}]
    node _GEN_0 = validif(eq(UInt<1>("h0"), _io_xSquared_T), ROM_0) @[cmd11.sc 10:{17,17}]
    node ROM_1 = UInt<7>("h1") @[cmd11.sc 9:{33,33}]
    node _GEN_1 = mux(eq(UInt<1>("h1"), _io_xSquared_T), ROM_1, _GEN_0) @[cmd11.sc 10:{17,17}]
    node ROM_2 = UInt<7>("h4") @[cmd11.sc 9:{33,33}]
    node _GEN_2 = mux(eq(UInt<2>("h2"), _io_xSquared_T), ROM_2, _GEN_1) @[cmd11.sc 10:{17,17}]
    node ROM_3 = UInt<7>("h9") @[cmd11.sc 9:{33,33}]
    node _GEN_3 = mux(eq(UInt<2>("h3"), _io_xSquared_T), ROM_3, _GEN_2) @[cmd11.sc 10:{17,17}]
    node ROM_4 = UInt<7>("h10") @[cmd11.sc 9:{33,33}]
    node _GEN_4 = mux(eq(UInt<3>("h4"), _io_xSquared_T), ROM_4, _GEN_3) @[cmd11.sc 10:{17,17}]
    node _ROM_io_xSquared_T = _GEN_4 @[cmd11.sc 10:17]
    io_xSquared <= _ROM_io_xSquared_T @[cmd11.sc 10:17]
