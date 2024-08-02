FIRRTL version 1.2.0
circuit TestMod :
  module TestMod :
    input clock : Clock
    input reset : UInt<1>
    input debug : UInt<1> @[cmd20.sc 2:19]
    output count : UInt<4> @[cmd20.sc 3:19]

    reg cnt_reg : UInt<4>, clock with :
      reset => (UInt<1>("h0"), cnt_reg) @[cmd20.sc 5:26]
    node _cnt_reg_T = add(cnt_reg, UInt<1>("h1")) @[cmd20.sc 7:28]
    node _cnt_reg_T_1 = tail(_cnt_reg_T, 1) @[cmd20.sc 7:28]
    node _T = add(cnt_reg, UInt<1>("h1")) @[cmd20.sc 8:23]
    node _T_1 = tail(_T, 1) @[cmd20.sc 8:23]
    node _T_2 = eq(_T_1, UInt<3>("h5")) @[cmd20.sc 8:29]
    node _GEN_0 = mux(_T_2, UInt<1>("h1"), _cnt_reg_T_1) @[cmd20.sc 7:17 8:38 9:21]
    node _GEN_1 = mux(debug, _GEN_0, cnt_reg) @[cmd20.sc 6:18 5:26]
    count <= cnt_reg @[cmd20.sc 12:11]
    cnt_reg <= mux(reset, UInt<4>("h0"), _GEN_1) @[cmd20.sc 5:{26,26}]
