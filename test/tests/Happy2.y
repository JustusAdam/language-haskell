-- SYNTAX TEST "source.haskell.happy" "Happy apostrophes etc"

%_name parse
-- <----- entity.name.directive.happy

%tokentype' { Token }
-- <---------- entity.name.directive.happy

%er'o_r'_ { parseError }
-- <-------- entity.name.directive.happy
