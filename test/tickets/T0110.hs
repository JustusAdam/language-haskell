-- SYNTAX TEST "source.haskell" "Multiline strings with and without CPP"

    let

      gap = "abc\   \def"
--          ^ punctuation.definition.string.begin.haskell
--           ^^^^^^^^^^^ string.quoted.double.haskell
--              ^ constant.character.escape.begin.haskell
--                  ^ constant.character.escape.end.haskell
--                      ^ punctuation.definition.string.end.haskell

      uni_gap = "abc\  \def"
--                  ^ constant.character.escape.begin.haskell
--                     ^ constant.character.escape.end.haskell
--                      ^^^^ - invalid.illegal.character-not-allowed-here.haskell

      bad_gap = "abc\   def"
--                      ^^^ invalid.illegal.character-not-allowed-here.haskell

      ok = 4
--    ^^^^^^ - invalid.illegal.character-not-allowed-here.haskell


      bad_gap2 = "abc\   def\"xyz"
--                       ^^^^^^^^ invalid.illegal.character-not-allowed-here.haskell
--                           ^ - punctuation.definition.string.end.haskell

      good_gap = "abc\   \\ndefxyz"
--                   ^ constant.character.escape.begin.haskell
--                       ^ constant.character.escape.end.haskell
--                       ^^^^^^^^^ - invalid.illegal.character-not-allowed-here.haskell
--                        ^^ constant.character.escape.haskell

      escaped = "abc\\  def"
--                  ^^ constant.character.escape.haskell
--                    ^^^^^^ string.quoted.double.haskell
--                    ^^^^^^ - invalid.illegal.character-not-allowed-here.haskell

      multi_escape = "abc\  def\" \\ \n xyz"
--                          ^^^^^ ^^ ^^ ^^^ invalid.illegal.character-not-allowed-here.haskell

      cpp_escape = "abc\
                    def\n"
--                  ^^^ string.quoted.double.haskell
--                     ^^ constant.character.escape.haskell

      ok2 = 5
--    ^^^^^^^ - invalid.illegal.character-not-allowed-here.haskell

      empty = "\
               \"
--              ^ punctuation.definition.string.end.haskell

      foo = "abc\

            \def"
--           ^^^^ string.quoted.double.haskell
--              ^ punctuation.definition.string.end.haskell

      bar = "abc\
             def"
--           ^^^^ string.quoted.double.haskell
--              ^ punctuation.definition.string.end.haskell
--           ^^^^ - invalid.illegal.character-not-allowed-here.haskell

      baz = 3
--    ^^^^^^^ - invalid.illegal.character-not-allowed-here.haskell

    in replicate baz (foo ++ bar)

     dangling_gap = "abc\  oops \
--                         ^^^^ ^ invalid.illegal.character-not-allowed-here.haskell
      "

    trailing = "abc\ 
                def"
--              ^^^ invalid.illegal.character-not-allowed-here.haskell
