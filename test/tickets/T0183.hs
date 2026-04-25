-- SYNTAX TEST "source.haskell" "Character literals above U+007E"


let cs =
    [ '¹', 'á', '¶', '«', '»', '¿', '§', '£' ]
--     ^    ^    ^    ^    ^    ^    ^    ^ string.quoted.single.haskell

    boo = '''
--         ^ - string.quoted.single.haskell
