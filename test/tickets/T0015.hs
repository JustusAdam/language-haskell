-- SYNTAX TEST "source.haskell" "Deriving for ADTs with sums and records"

data Feed =
  BuildTask {
      blokName :: String,
      outPathBuild :: FilePath,
      relPath :: FilePath,
      srcFile :: Files.File
  }
  deriving Eq
-- <~~-------- meta.deriving.haskell

data Query
  = All
  | Some {
      feeds :: [String],
      cats :: [String],
      dates :: QueryDate
  }
  deriving Read
-- <~~---------- meta.deriving.haskell


data QueryDate
  = AnyDate
  | Between String String
  deriving Read
-- <~~---------- meta.deriving.haskell
