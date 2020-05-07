-- SYNTAX TEST "source.haskell" "Test numeric literals and underscores"

     -- decimal integers
     print [ 1_000_000 == 1000000,
--           ^^^^^^^^^ constant.numeric.integral.decimal.haskell
--                        ^^^^^^^ constant.numeric.integral.decimal.haskell
             1__0 == 10,
--           ^^^^  constant.numeric.integral.decimal.haskell
--                   ^^ constant.numeric.integral.decimal.haskell
             299_792_458 == 299792458,
--           ^^^^^^^^^^^  constant.numeric.integral.decimal.haskell
--                          ^^^^^^^^^ constant.numeric.integral.decimal.haskell
             8_04_1 == 8041,
--           ^^^^^^ constant.numeric.integral.decimal.haskell
--                     ^^^^ constant.numeric.integral.decimal.haskell
             2017_12_31 == 20171231
--           ^^^^^^^^^^constant.numeric.integral.decimal.haskell
--                         ^^^^^^^^ constant.numeric.integral.decimal.haskell
           ]

     -- binary integers
     print [ 0b01_0000_0000 == 0b0100000000,
--           ^^^^^^^^^^^^^^ constant.numeric.integral.binary.haskell
--                             ^^^^^^^^^^^^ constant.numeric.integral.binary.haskell
             0b1_11_01_0000_0_111 == 0b1110100000111,
--           ^^^^^^^^^^^^^^^^^^^^ constant.numeric.integral.binary.haskell
--                                   ^^^^^^^^^^^^^^^ constant.numeric.integral.binary.haskell
             0b1100_1011__1110_1111__0101_0011 ==
--           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.integral.binary.haskell
             0b110010111110111101010011
--           ^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.integral.binary.haskell

    -- octal integers
     print [ 0o1_000_000 == 0o1000000,
--           ^^^^^^^^^^^ constant.numeric.integral.octal.haskell
--                          ^^^^^^^^^ constant.numeric.integral.octal.haskell
             0O1__0 == 0O10
--           ^^^^^^ constant.numeric.integral.octal.haskell
--                     ^^^^ constant.numeric.integral.octal.haskell
           ]

     -- hexadecimal integers
     print [ 0x1_000_000 == 0x1000000,
--           ^^^^^^^^^^^ constant.numeric.integral.hexadecimal.haskell
--                          ^^^^^^^^^ constant.numeric.integral.hexadecimal.haskell
             0x1__0 == 0x10,
--           ^^^^^^ constant.numeric.integral.hexadecimal.haskell
--                     ^^^^ constant.numeric.integral.hexadecimal.haskell
             0xff_00_00 == 0xff0000,
--           ^^^^^^^^^^ constant.numeric.integral.hexadecimal.haskell
--                         ^^^^^^^^ constant.numeric.integral.hexadecimal.haskell
             0X3fff_ffff == 0x3fffffff
--           ^^^^^^^^^^^ constant.numeric.integral.hexadecimal.haskell
--                          ^^^^^^^^^^ constant.numeric.integral.hexadecimal.haskell
           ]

     -- negative decimal integer
     print [ -1_0 == -10
--            ^^^ constant.numeric.integral.decimal.haskell
--                    ^^ constant.numeric.integral.decimal.haskell
           ]

     -- negative binary integer
     print [ -0b1_0 == -0b10
--            ^^^^^ constant.numeric.integral.binary.haskell
--                      ^^^^ constant.numeric.integral.binary.haskell
           ]

     -- negative octal integer
     print [ -0o1_0 == -0o10
--            ^^^^^ constant.numeric.integral.octal.haskell
--                      ^^^^ constant.numeric.integral.octal.haskell
           ]

     -- negative hexadecimal integer
     print [ -0x1_0 == -0x10
--            ^^^^^ constant.numeric.integral.hexadecimal.haskell
--                      ^^^^ constant.numeric.integral.hexadecimal.haskell
           ]

     ---- decimal positive floating point numbers
     print [ 3.141_592_653_589_793 == 3.141592653589793,
--           ^^^^^^^^^^^^^^^^^^^^^ constant.numeric.floating.decimal.haskell
--                                    ^^^^^^^^^^^^^^^^^ constant.numeric.floating.decimal.haskell
             96_485.332_89 == 96485.33289,
--           ^^^^^^^^^^^^^ constant.numeric.floating.decimal.haskell
--                            ^^^^^^^^^^^ constant.numeric.floating.decimal.haskell
             6.022_140_857e+23 == 6.022140857e+23
--           ^^^^^^^^^^^^^^^^^ constant.numeric.floating.decimal.haskell
--                                ^^^^^^^^^^^^^^^ constant.numeric.floating.decimal.haskell
           ]

     -- decimal negative floating point numbers
     print [ -1_0.0_1 == -10.01,
--            ^^^^^^^ constant.numeric.floating.decimal.haskell
--                        ^^^^^ constant.numeric.floating.decimal.haskell
             -1_0e+2 == -10e+2,
--            ^^^^^^ constant.numeric.floating.decimal.haskell
--                       ^^^^^ constant.numeric.floating.decimal.haskell
             -1_0.0_1e+3 == -10.01e+3
--            ^^^^^^^^^^ constant.numeric.floating.decimal.haskell
--                           ^^^^^^^^ constant.numeric.floating.decimal.haskell
           ]

     -- positive hexadecimal floating point numbers
     print [ 0xF_F.1F == 0xFF.1F,
--           ^^^^^^^^ constant.numeric.floating.hexadecimal.haskell
--                       ^^^^^^^ constant.numeric.floating.hexadecimal.haskell
             0xF_01p-8 == 0xF01p-8,
--           ^^^^^^^^^ constant.numeric.floating.hexadecimal.haskell
--                        ^^^^^^^^ constant.numeric.floating.hexadecimal.haskell
             0x0.F_1p4 == 0x0.F1p4
--           ^^^^^^^^^ constant.numeric.floating.hexadecimal.haskell
--                        ^^^^^^^^ constant.numeric.floating.hexadecimal.haskell
           ]

     -- negative hexadecimal floating point numbers
     print [ -0xF_F.F == -0xFF.F,
--            ^^^^^^^ constant.numeric.floating.hexadecimal.haskell
--                        ^^^^^^ constant.numeric.floating.hexadecimal.haskell
             -0xF_01p-1 == -0xF01p-1,
--            ^^^^^^^^^ constant.numeric.floating.hexadecimal.haskell
--                          ^^^^^^^^ constant.numeric.floating.hexadecimal.haskell
             -0x0.F_1p1 == -0x0.F1p1
--            ^^^^^^^^^ constant.numeric.floating.hexadecimal.haskell
--                          ^^^^^^^^ constant.numeric.floating.hexadecimal.haskell
           ]

     -- additional tests
     print [ 0.000_1 == 0.0001,
--           ^^^^^^^ constant.numeric.floating.decimal.haskell
--                      ^^^^^^ constant.numeric.floating.decimal.haskell
             1_0.000_1 == 10.0001,
--           ^^^^^^^^^ constant.numeric.floating.decimal.haskell
--                        ^^^^^^^ constant.numeric.floating.decimal.haskell
             1e+23 == 1e+23,
--           ^^^^^ constant.numeric.floating.decimal.haskell
--                    ^^^^^ constant.numeric.floating.decimal.haskell
             1_e+23 == 1e+23,
--           ^^^^^^ constant.numeric.floating.decimal.haskell
--                     ^^^^^ constant.numeric.floating.decimal.haskell
             1__e+23 == 1e+23,
--           ^^^^^^^ constant.numeric.floating.decimal.haskell
--                      ^^^^^ constant.numeric.floating.decimal.haskell
             1.0_e+23 == 1.0e+23,
--           ^^^^^^^^ constant.numeric.floating.decimal.haskell
--                       ^^^^^^^ constant.numeric.floating.decimal.haskell
             1.0_e+2_3 == 1.0e+23,
--           ^^^^^^^^^ constant.numeric.floating.decimal.haskell
--                        ^^^^^^^ constant.numeric.floating.decimal.haskell
             1_e23 == 1e23,
--           ^^^^^ constant.numeric.floating.decimal.haskell
--                    ^^^^ constant.numeric.floating.decimal.haskell
             1_e-23 == 1e-23,
--           ^^^^^^ constant.numeric.floating.decimal.haskell
--                     ^^^^^ constant.numeric.floating.decimal.haskell
             1_0_e23 == 10e23,
--           ^^^^^^^ constant.numeric.floating.decimal.haskell
--                      ^^^^^ constant.numeric.floating.decimal.haskell
             1_0_e-23 == 10e-23,
--           ^^^^^^^^ constant.numeric.floating.decimal.haskell
--                       ^^^^^^ constant.numeric.floating.decimal.haskell
             0b_01 == 0b01,
--           ^^^^^ constant.numeric.integral.binary.haskell
--                    ^^^^ constant.numeric.integral.binary.haskell
             0b__11 == 0b11,
--           ^^^^^^ constant.numeric.integral.binary.haskell
--                     ^^^^ constant.numeric.integral.binary.haskell
             0x_ff == 0xff,
--           ^^^^^ constant.numeric.integral.hexadecimal.haskell
--                    ^^^^ constant.numeric.integral.hexadecimal.haskell
             0x__ff == 0xff
--           ^^^^^^ constant.numeric.integral.hexadecimal.haskell
--                     ^^^^ constant.numeric.integral.hexadecimal.haskell
           ]
