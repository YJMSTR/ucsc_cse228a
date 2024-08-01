FIRRTL version 1.2.0
circuit Ticker :
  module Ticker :
    input clock : Clock
    input reset : UInt<1>
    output io_tick : UInt<1> @[cmd7.sc 3:16]

    node _GEN_0 = mux(UInt<1>("h1"), UInt<1>("h1"), UInt<1>("h0")) @[src/main/scala/chisel3/util/Counter.scala 118:{16,23} 117:24]
    node value = UInt<1>("h0") @[src/main/scala/chisel3/util/Counter.scala 61:{73,73}]
    node _io_tick_T = eq(value, UInt<1>("h0")) @[cmd7.sc 7:23]
    node wrap = _GEN_0 @[src/main/scala/chisel3/util/Counter.scala 117:24]
    io_tick <= _io_tick_T @[cmd7.sc 7:13]
