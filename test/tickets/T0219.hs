-- SYNTAX TEST "source.haskell" "Package imports"

import "pkg1" Foo.Bar
--      ^^^ entity.name.package.haskell
import "constraints-extras" Quux
--      ^^^^^^^^^^^^^^^^^^ entity.name.package.haskell
--                      ^^ - keyword.other.as.haskell
