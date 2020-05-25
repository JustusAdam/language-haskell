-- SYNTAX TEST "source.haskell" "StrictData language pragma"

    {-# LANGUAGE StrictData #-}
--      ^^^^^^^^ keyword.other.preprocessor.pragma.haskell
--               ^^^^^^^^^^ keyword.other.preprocessor.extension.haskell
  

   {-# LANGUAGE StrictDataNotAnExtension #-}
--              ^^^^^^^^^^^^^^^^^^^^^^^^ - keyword.other.preprocessor.extension.haskell
