-- SYNTAX TEST "source.haskell" "Interaction between record fields and context arrows"

    data BuilderType = Builder
      { (>>=)  :: forall m a b. Unrestricted.Monad     m => m a -> (a -> m b) -> m b
--       ^^^ variable.other.member.definition.haskell
--             ^^ keyword.operator.double-colon.haskell
--                ^^^^^^ keyword.other.forall.haskell
--                            ^ keyword.operator.period.haskell
--                                                       ^^ keyword.operator.big-arrow
      , (>>)   :: forall m b  . Unrestricted.Monad     m => m () -> m b -> m b
--       ^^ variable.other.member.definition.haskell
--             ^^ keyword.operator.double-colon.haskell
--                ^^^^^^ keyword.other.forall.haskell
--                            ^ keyword.operator.period.haskell
--                                                       ^^ keyword.operator.big-arrow
      , fail   :: forall m a  . Unrestricted.MonadFail m => String -> m a
--      ^^^^ variable.other.member.definition.haskell
--             ^^ keyword.operator.double-colon.haskell
--                ^^^^^^ keyword.other.forall.haskell
--                            ^ keyword.operator.period.haskell
--                                                       ^^ keyword.operator.big-arrow
      , return :: forall m a  . Unrestricted.Monad     m => a -> m a
--      ^^^^^^ variable.other.member.definition.haskell
--             ^^ keyword.operator.double-colon.haskell
--                ^^^^^^ keyword.other.forall.haskell
--                            ^ keyword.operator.period.haskell
--                                                       ^^ keyword.operator.big-arrow
      }
