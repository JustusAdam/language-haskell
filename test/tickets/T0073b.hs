-- SYNTAX TEST "source.haskell" "Visible kind application"

type TF l = F @_ @(l :: Nat) A
--            ^  ^ meta.type-application.haskell