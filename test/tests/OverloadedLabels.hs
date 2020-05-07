-- SYNTAX TEST "source.haskell" "OverloadedLabels"

    
    document = #html [#head [#title [get #title page]], #body [#p ["x=1"] ["Hello!"]]]
--             ^      ^      ^           ^              ^      ^ keyword.operator.prefix.hash.haskell
--             ^^^^^  ^^^^^  ^^^^^^      ^^^^^^         ^^^^^  ^^ entity.name.label.haskell
      where page = (#title := "something")
--                  ^ keyword.operator.prefix.hash.haskell
--                  ^^^^^^ entity.name.label.haskell

      test #a
--         ^ keyword.operator.prefix.hash.haskell
--         ^^ entity.name.label.haskell
      test #number17
--         ^ keyword.operator.prefix.hash.haskell
--         ^^^^^^^^^ entity.name.label.haskell
      test #do
--         ^ keyword.operator.prefix.hash.haskell
--         ^^^ entity.name.label.haskell
      test #type
--         ^ keyword.operator.prefix.hash.haskell
--         ^^^^^ entity.name.label.haskell
      test #Foo
--         ^ keyword.operator.prefix.hash.haskell
--         ^^^^ entity.name.label.haskell
      test #"Foo"
--         ^ keyword.operator.prefix.hash.haskell
--         ^^^^^^ entity.name.label.haskell
      test #3
--         ^ keyword.operator.prefix.hash.haskell
--         ^^ entity.name.label.haskell
      test #"3"
--         ^ keyword.operator.prefix.hash.haskell
--         ^^^^ entity.name.label.haskell
      test #199.4
--         ^ keyword.operator.prefix.hash.haskell
--         ^^^^^^ entity.name.label.haskell
      test #17a23b
--         ^ keyword.operator.prefix.hash.haskell
--         ^^^^^^^ entity.name.label.haskell
      test #"The quick brown fox"
--         ^ keyword.operator.prefix.hash.haskell
--         ^^^^^^^^^^^^^^^^^^^^^^ entity.name.label.haskell
      test #f'a'
--         ^ keyword.operator.prefix.hash.haskell
--         ^^^^^ entity.name.label.haskell
      test #'a'
--         ^ keyword.operator.prefix.hash.haskell
--         ^^^^ entity.name.label.haskell
      test #":"
--         ^ keyword.operator.prefix.hash.haskell 
--         ^^^^ entity.name.label.haskell
      test #'
--         ^ keyword.operator.prefix.hash.haskell
--         ^^ entity.name.label.haskell
      test #"\""
--         ^ keyword.operator.prefix.hash.haskell
--         ^^^^^ entity.name.label.haskell