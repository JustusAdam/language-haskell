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

## Themes

This extension provides TextMate scopes for use in syntax highlighting, but the colours displayed
depend on the theme being used.    
Unfortunately many themes have incomplete support for the different TextMate scopes, and as a
result different tokens can end up with identical colours.    

For a theme that supports all the scopes provided by this extension, see the
[Groovy Lambda theme](https://github.com/sheaf/groovy-lambda).

## Theme authors

I recently realized that I am woefully unaware of whether there are any themes with Haskell-specific
rules and how changes to this extension affect such themes. If you are a theme author that wishes to
use Haskell specific rules, or are aware of a theme with Haskell specific rules, feel free to get in
touch.

With version `3.0.0` some new tm scopes were added, such that now record and GADT definitions can be
distinguished. Let me know if there are any questions about the scope assignment in this
extension or if there are further scope assigments you'd like to see added.

We now publish an automatically generated, complete list of the textmate scopes
used in our grammars. You can find the lists of scopes in the
[scope-lists](/scope-lists) directory.

## Contributing

This project currently uses the `YAML-tmLanguage` format for language grammars (Haskell, Cabal, alex, happy, ...).
The grammars can be found in the `syntaxes` directory.  
To generate `JSON` grammars (which is the format VS Code expects), we use the Node package `js-yaml` (requires `npx` in PATH):

```sh
npx js-yaml haskell.YAML-tmLanguage > haskell.json
```

For testing, we use the Node package `vscode-tmgrammar-test`. For instance, to generate/check
the scopes of a Haskell source file, run:

```sh
npx vscode-tmgrammar-test "-s" "source.haskell" "-g" "syntaxes/haskell.json" "-t" "myTestFile.hs"
```


To run the test-suite, simply call `make test`.
This will build the grammar files and run `vscode-tmgrammar-test` on all the files in the testsuite.
