FIRRTL version 1.2.0
circuit TestMod :
  module TestMod :
    input clock : Clock
    input reset : UInt<1>
    input debug : UInt<1> @[cmd14.sc 2:19]
    output count : UInt<4> @[cmd14.sc 3:19]

    reg cnt_reg : UInt<4>, clock with :
      reset => (UInt<1>("h0"), cnt_reg) @[cmd14.sc 5:26]
    node _cnt_reg_T = add(cnt_reg, UInt<1>("h1")) @[cmd14.sc 7:28]
    node _cnt_reg_T_1 = tail(_cnt_reg_T, 1) @[cmd14.sc 7:28]
    node _GEN_0 = mux(debug, _cnt_reg_T_1, cnt_reg) @[cmd14.sc 6:18 7:17 5:26]
    count <= cnt_reg @[cmd14.sc 10:11]
    cnt_reg <= mux(reset, UInt<4>("h0"), _GEN_0) @[cmd14.sc 5:{26,26}]
