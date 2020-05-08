-- SYNTAX TEST "source.haskell" "Qualified record fields"
    
    parserPrefs = OptParse.ParserPrefs
      { OptParse.prefMultiSuffix     = ""
--      ^^^^^^^^^ entity.name.namespace.haskell
--               ^^^^^^^^^^^^^^^ variable.other.member.haskell
      , OptParse.prefDisambiguate    = True
--      ^^^^^^^^^ entity.name.namespace.haskell
--               ^^^^^^^^^^^^^^^^ variable.other.member.haskell
      , OptParse.prefShowHelpOnError = True
--      ^^^^^^^^^ entity.name.namespace.haskell
--               ^^^^^^^^^^^^^^^^^^^ variable.other.member.haskell
      , OptParse.prefShowHelpOnEmpty = False
--      ^^^^^^^^^ entity.name.namespace.haskell
--               ^^^^^^^^^^^^^^^^^^^ variable.other.member.haskell
      , OptParse.prefBacktrack       = OptParse.Backtrack
--      ^^^^^^^^^ entity.name.namespace.haskell
--               ^^^^^^^^^^^^^ variable.other.member.haskell
      , OptParse.prefColumns         = 80
--      ^^^^^^^^^ entity.name.namespace.haskell
--               ^^^^^^^^^^^ variable.other.member.haskell
      , OptParse.prefHelpLongEquals  = False
--      ^^^^^^^^^ entity.name.namespace.haskell
--               ^^^^^^^^^^^^^^^^^^ variable.other.member.haskell
      }