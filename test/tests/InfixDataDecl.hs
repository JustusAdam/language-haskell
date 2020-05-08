-- SYNTAX TEST "source.haskell" "Infix data declarations"


    data A a b = ( T b c ( d e ) f ) `C` '[ A b, C, D [ e, f ] g ]
--  ^^^^ keyword.other.data.haskell
--             ^ keyword.operator.eq.haskell
--               ^                 ^ punctuation.paren.haskell
--                                    ^ constant.other.haskell
--                                   ^ ^ punctuation.backtick.haskell
--                                       ^ keyword.operator.promotion.haskell
--       ^         ^                        ^    ^  ^ storage.type.haskell
--         ^ ^       ^ ^   ^ ^   ^            ^         ^  ^   ^ variable.other.generic-type.haskell
--                                        ^                      ^ punctuation.bracket.haskell