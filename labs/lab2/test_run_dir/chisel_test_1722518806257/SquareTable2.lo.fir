FIRRTL version 1.2.0
circuit SquareTable2 :
  module SquareTable2 :
    input clock : Clock
    input reset : UInt<1>
    input io_x : UInt<5> @[cmd11.sc 2:16]
    output io_xSquared : UInt<9> @[cmd11.sc 2:16]

    node _io_xSquared_T = bits(io_x, 3, 0)
    node ROM_0 = UInt<9>("h0") @[cmd11.sc 9:{33,33}]
    node _GEN_0 = validif(eq(UInt<1>("h0"), _io_xSquared_T), ROM_0) @[cmd11.sc 10:{17,17}]
    node ROM_1 = UInt<9>("h1") @[cmd11.sc 9:{33,33}]
    node _GEN_1 = mux(eq(UInt<1>("h1"), _io_xSquared_T), ROM_1, _GEN_0) @[cmd11.sc 10:{17,17}]
    node ROM_2 = UInt<9>("h4") @[cmd11.sc 9:{33,33}]
    node _GEN_2 = mux(eq(UInt<2>("h2"), _io_xSquared_T), ROM_2, _GEN_1) @[cmd11.sc 10:{17,17}]
    node ROM_3 = UInt<9>("h9") @[cmd11.sc 9:{33,33}]
    node _GEN_3 = mux(eq(UInt<2>("h3"), _io_xSquared_T), ROM_3, _GEN_2) @[cmd11.sc 10:{17,17}]
    node ROM_4 = UInt<9>("h10") @[cmd11.sc 9:{33,33}]
    node _GEN_4 = mux(eq(UInt<3>("h4"), _io_xSquared_T), ROM_4, _GEN_3) @[cmd11.sc 10:{17,17}]
    node ROM_5 = UInt<9>("h19") @[cmd11.sc 9:{33,33}]
    node _GEN_5 = mux(eq(UInt<3>("h5"), _io_xSquared_T), ROM_5, _GEN_4) @[cmd11.sc 10:{17,17}]
    node ROM_6 = UInt<9>("h24") @[cmd11.sc 9:{33,33}]
    node _GEN_6 = mux(eq(UInt<3>("h6"), _io_xSquared_T), ROM_6, _GEN_5) @[cmd11.sc 10:{17,17}]
    node ROM_7 = UInt<9>("h31") @[cmd11.sc 9:{33,33}]
    node _GEN_7 = mux(eq(UInt<3>("h7"), _io_xSquared_T), ROM_7, _GEN_6) @[cmd11.sc 10:{17,17}]
    node ROM_8 = UInt<9>("h40") @[cmd11.sc 9:{33,33}]
    node _GEN_8 = mux(eq(UInt<4>("h8"), _io_xSquared_T), ROM_8, _GEN_7) @[cmd11.sc 10:{17,17}]
    node ROM_9 = UInt<9>("h51") @[cmd11.sc 9:{33,33}]
    node _GEN_9 = mux(eq(UInt<4>("h9"), _io_xSquared_T), ROM_9, _GEN_8) @[cmd11.sc 10:{17,17}]
    node _ROM_io_xSquared_T = _GEN_9 @[cmd11.sc 10:17]
    io_xSquared <= _ROM_io_xSquared_T @[cmd11.sc 10:17]
