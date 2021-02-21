-- SYNTAX TEST "source.haskell" "Prefix symbolic data constructors"

data Prop = None             -- ^ @_@
--   ^^^^ storage.type.haskell
--        ^ keyword.operator.eq.haskell
--          ^^^^ constant.other.haskell
--                           ^^^^^^^^ comment.line.documentation.haskell
          | T                -- ^ True
--        ^ keyword.operator.pipe.haskell
--          ^ constant.other.haskell
--                           ^^^^^^^^^ comment.line.documentation.haskell
          | F                -- ^ False
--        ^ keyword.operator.pipe.haskell
--          ^ constant.other.haskell
--                           ^^^^^^^^^^ comment.line.documentation.haskell
          | Atom String      -- ^ prop
--        ^ keyword.operator.pipe.haskell
--          ^^^^ constant.other.haskell
--               ^^^^^^ storage.type.haskell
--                           ^^^^^^^^^ comment.line.documentation.haskell
          | Not Prop         -- ^ negate
--        ^ keyword.operator.pipe.haskell
--          ^^^ constant.other.haskell
--              ^^^^ storage.type.haskell
--                           ^^^^^^^^^^^ comment.line.documentation.haskell
          | (:/\) Prop Prop  -- ^ and
--        ^ keyword.operator.pipe.haskell
--           ^^^ constant.other.operator.prefix.haskell
--                ^^^^ ^^^^ storage.type.haskell
--                           ^^^^^^^^ comment.line.documentation.haskell
          | (:\/) Prop Prop  -- ^ or
--        ^ keyword.operator.pipe.haskell
--           ^^^ constant.other.operator.prefix.haskell
--                ^^^^ ^^^^ storage.type.haskell
--                           ^^^^^^^ comment.line.documentation.haskell
          | (:->) Prop Prop  -- ^ imply
--        ^ keyword.operator.pipe.haskell
--           ^^^ constant.other.operator.prefix.haskell
--                ^^^^ ^^^^ storage.type.haskell
--                           ^^^^^^^^^^ comment.line.documentation.haskell
          | (:<->) Prop Prop -- ^ <->
--        ^ keyword.operator.pipe.haskell
--           ^^^^ constant.other.operator.prefix.haskell
--                 ^^^^ ^^^^ storage.type.haskell
--                           ^^^^^^^^ comment.line.documentation.haskell
