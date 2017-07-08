## 2.3 - unreleased

- Merged pull request [#37](https://github.com/JustusAdam/language-haskell/pull/37) by [@jBugman](https://github.com/jBugman)
    - Adds `custom-setup` section to cabal syntax
    - Adds support for line comments (`--`) to cabal syntax

## 2.2.3 - 29.06.2017

- Adapted increaseIndentPattern to skip keywords followed by `'` (related to the handling of `keyword'` identifiers as reported in [#31](https://github.com/JustusAdam/language-haskell/issues/31))
- Fixed terminating type signatures on `else`, `then` etc.
- Fixed not increasing indent for one-line `if` (see [#34](https://github.com/JustusAdam/language-haskell/issues/34))

## 2.2.2 - 27.06.2017

- Fixed highlighting for `where` keyword in GADT definition
- Fixed highlighting for `<-` and following expression when preceeded by type signature (see [#28](https://github.com/JustusAdam/language-haskell/issues/28))
- Added `mdo` and `rec` to keywords (see [#29](https://github.com/JustusAdam/language-haskell/issues/29))
- Added automatic indent for `mdo` blocks 
- Changed keyword regexes to not fire when followed by `'` (see [#31](https://github.com/JustusAdam/language-haskell/issues/31))
- Fixed highlighing for qualified infix functions (see [#30](https://github.com/JustusAdam/language-haskell/issues/30))

## 2.2.1 - 07.06.2017

- Removed snippets contribution from package.json (fixes `ENOENT: no such file or directory` error) discovered and fixed by [@dsifford](https://gihub.com/dsifford)

## 2.2.0 - 26.05.2017

- Removed snippets by request from [@Eugleo](https://github.com/Eugleo) in [#25](https://github.com/JustusAdam/language-haskell/issues/25)

## 2.1.1 - 15.04.2017

- Fixed two issues with highlighting for deriving clauses
    - Added a new rule for deriving clauses of single class without parentheses (see [#15](https://github.com/JustusAdam/language-haskell/issues/15) and [#19](https://github.com/JustusAdam/language-haskell/issues/19))
    - Modified old rule inner matches to be recursive -> Adds correct highlighting for parethesised class type arguments

## 2.1.0  - 12.03.2017

- Fixed an issue where type signature detection would not end at end of record definition
- Added GHC pragmas and directives (thank you to [@metaleap](https://github.com/metaleap))

## 2.0.0 - 15.02.2017

- Retroactive version bump due to large previous changes 
- License changed

## 1.5.0 - 13.02.2017

- Removed highlighting for prelude functions, as it is confusing. (see [#11](https://github.com/JustusAdam/language-haskell/issues/11))
- New rules:
    - to recognize and correctly highlight inline type signatures (reported in [#11](https://github.com/JustusAdam/language-haskell/issues/11))
    - for `type` to highlight left and right side of `=` as type signature
    - for `data` to highlight only right side of `=` as type signature
    - for distinction between comments and haddock documentation

## 1.4.4 - 12.01.2017

- Fixed a bug where in consecutive type signatures the later ones are not highlighed properly

## 1.4.3 - 23.12.2016

- Removing auto closing `'` per suggestion from [@HuwCampbell](https://github.com/HuwCampbell) (see [#9](https://github.com/JustusAdam/language-haskell/issues/9))

### 1.4.2 - 21.12.2016

- Changing grammar to accomodate indented functions

### 1.4.1 - 21.12.2016

- Changing grammar to try and fix the markup of function names preceeding type signatures

### 1.4.0 - 17.12.2016

- Manual merging of changes from [haskell.tmbundle#18](https://github.com/textmate/haskell.tmbundle/pull/18) by [@sanssecours](https://github.com/sanssecours) for several markup fixes (most importantly multi line type signatures (see [#1](https://github.com/JustusAdam/language-haskell/issues/1)))

### 1.3.0

- Replacing typescript initializer with json configuration
- Adding smart brackets

### 1.2.3

- PR from [@Miguel-Fontes](https://github.com/Miguel-Fontes) to 
    - add markup for literate haskell files (see [#7](https://github.com/JustusAdam/language-haskell/issues/7))
    - add markup for embedded haskell code in latex
