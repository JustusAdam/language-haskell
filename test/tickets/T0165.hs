-- SYNTAX TEST "source.haskell" "Data constructor constraint arrow in comment"

    data D = C {- => X -} X
--           ^ constant.other.haskell
--                ^^ - keyword.operator.big-arrow.haskell
--             ^^^^^^^^^^ comment.block.haskell
--       ^                ^ storage.type.haskell
--                   ^    ^ - constant.other.haskell

    data D = C {- xxx -} => X
--       ^   ^ storage.type.haskell
--             ^^^^^^^^^ comment.block.haskell
--                          ^ constant.other.haskell

    data D = C-- => X
--       ^ storage.type.haskell
--           ^ constant.other.haskell
--               ^^ - keyword.operator.big-arrow.haskell
--            ^^^^^^^ comment.line.double-dash.haskell
--             ^^^^^^^^^^ comment.block.haskell
--                   ^ - constant.other.haskell

    data D = C -- => X
--       ^ storage.type.haskell
--           ^ constant.other.haskell
--                ^^ - keyword.operator.big-arrow.haskell
--             ^^^^^^^ comment.line.double-dash.haskell
--              ^^^^^^^^^^ comment.block.haskell
--                    ^ - constant.other.haskell

    data QCInst  -- A much simplified version of ClsInst
                 -- See Note [Quantified constraints] in GHC.Tc.Solver.Canonical
      = QCI { qci_ev   :: CtEvidence -- Always of type forall tvs. context => ty
--      ^^^ constant.other.haskell
--            ^^^^^^ variable.other.member.definition.haskel
--                     ^^ keyword.operator.double-colon.haskell
--                        ^^^^^^^^^^ storage.type.haskell
--                                                                         ^^ - keyword.operator.big-arrow.haskell
--                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-dash.haskell

                                     -- Always Given
            , qci_tvs  :: [TcTyVar]  -- The tvs
--            ^^^^^^^ variable.other.member.definition.haskel
            , qci_pred :: TcPredType -- The ty
--            ^^^^^^^^ variable.other.member.definition.haskel
            , qci_pend_sc :: Bool    -- Same as cc_pend_sc flag in CDictCan
--            ^^^^^^^^^^^ variable.other.member.definition.haskel
                                     -- Invariant: True => qci_pred is a ClassPred
        }
