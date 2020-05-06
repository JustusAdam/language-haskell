-- SYNTAX TEST "source.haskell" "Role annotations"


    data A n r p where
    
    type role A nominal representational phantom
--  ^^^^ keyword.other.type.haskell
--       ^^^^ keyword.other.role.haskell
--            ^ storage.type.haskell
--              ^^^^^^^ keyword.other.role.nominal.haskell
--                      ^^^^^^^^^^^^^^^^ keyword.other.role.representational.haskell
--                                       ^^^^^^^ keyword.other.role.phantom.haskell
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.role-annotation.haskell

    
    type role A
--  ^^^^ keyword.other.type.haskell
--       ^^^^ keyword.other.role.haskell
--            ^ storage.type.haskell
      nominal
--    ^^^^^^^ keyword.other.role.nominal.haskell
      representational
--    ^^^^^^^^^^^^^^^^ keyword.other.role.representational.haskell
      phantom
--    ^^^^^^^ keyword.other.role.phantom.haskell

    type role
--  ^^^^ keyword.other.type.haskell
--       ^^^^ keyword.other.role.haskell
      (:&)
--     ^^ storage.type.operator.haskell
        nominal
--      ^^^^^^^ keyword.other.role.nominal.haskell
        representational
--      ^^^^^^^^^^^^^^^^ keyword.other.role.representational.haskell
        phantom
--      ^^^^^^^ keyword.other.role.phantom.haskell
