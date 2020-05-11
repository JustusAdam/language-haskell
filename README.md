# Haskell Language support


Support for the Haskell programming language in Visual Studio Code.

## Syntax highlighting

Adds syntax highlighting support for Haskell (.hs and .lhs). This is a (now heavily) modified version of
the syntax file from the [Haskell TextMate bundle](https://github.com/textmate/haskell.tmbundle).
Additionally there is support for Cabal files (.cabal) via a concoction of my own.

Also adds automatic indentation after `where`, `do`, `->` etc. and surrounding brackets (`[]`, `{}` etc)

![Screenshot Haskell](/images/screenshot1.png?raw=true)

![Screenshot Cabal](/images/screenshot-cabal1.png?raw=true)

## Bugs

If you happen to notice bugs or have suggestions for improvements visit the [issue
section](https://github.com/JustusAdam/language-haskell/issues) of the
[repository](https://github.com/JustusAdam/language-haskell).

## Theme authors

I recently realized that I am woefully unaware of whether there are any themes with Haskell-specific
rules and how changes to this extension affect such themes. If you are a theme author that wishes to
use Haskell specific rules, or are aware of a theme with Haskell specific rules, feel free to get in
touch.

With version `3.0.0` some new tm scopes were added, such that now record and GADT definitions can be
distinguished. Let me know if there are any questions about the scope assignment in this
extension or if there are further scope assigments you'd like to see added.

We now publish
