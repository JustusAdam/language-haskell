-- SYNTAX TEST "source.haskell" "Comments inside pragma"

    {-# LANGUAGE
        -- Type level programming
--      ^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-dash.haskell
        DataKinds, PolyKinds,
        -- Generics
--      ^^^^^^^^^^^ comment.line.double-dash.haskell
        DeriveGeneric, DeriveAnyClass, DerivingVia
        {- Type applications -}
--      ^^^^^^^^^^^^^^^^^^^^^^^ comment.block.haskell
        , TypeApplications, AllowAmbiguousTypes
      #-}
