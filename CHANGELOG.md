## x.x.x - unreleased

- Enable highlighting for `.hs-boot` files ([#117](https://github.com/JustusAdam/language-haskell/issues/117)).
- Highlighting for data families and instances ([#72](https://github.com/JustusAdam/language-haskell/issues/72)).
- Fix regression: allow extra spaces between record field and type signature
  ([#118](https://github.com/JustusAdam/language-haskell/issues/118))
- Add support for deriving strategies, and improve leniency for whitespace in deriving declarations
  ([#72](https://github.com/JustusAdam/language-haskell/issues/72))
- Fixed highlighting for GADT's when `::` follows on a new line
  ([#119](https://github.com/JustusAdam/language-haskell/issues/119))
- Fixed regression [#122](https://github.com/JustusAdam/language-haskell/issues/122), constructor
  patterns
- Enabling pragmas in multiline comments
  ([#116](https://github.com/JustusAdam/language-haskell/issues/116))
- Fixed highlighting for infix constructors
  ([#120](https://github.com/JustusAdam/language-haskell/issues/120))
- Added support for multiline type signatures for pattern synonyms
- Fixed fixed multi pattern synonym type declarations ([#72](https://github.com/JustusAdam/language-haskell/issues/72))
- Add support for cabal [internal libraries](https://www.haskell.org/cabal/users-guide/developing-packages.html#sublibs).
- Allow unparenthesised `via` clauses, and highlight the derived instance code as usual.
- Improve highlighting of ticks ([#136](https://github.com/JustusAdam/language-haskell/issues/136)),
  ([#71](https://github.com/JustusAdam/language-haskell/issues/71)).
- Support record syntax in GADTs.
- Address regression in LiquidHaskell highlighting ([#131](https://github.com/JustusAdam/language-haskell/issues/136)).
- Fixed several issues involving multi-line type/data declarations,
  including allowing intervening comments ([#147](https://github.com/JustusAdam/language-haskell/pull/147)).

## 3.0.0 - 26.04.2020

- Integrated several contributions from [@robrix](https://github.com/robrix)
  - Highlight `common` stanzas in `.cabal` files
    ([#105](https://github.com/JustusAdam/language-haskell/pull/105))
  - Highlight `benchmark` components in `.cabal` files
    ([#105](https://github.com/JustusAdam/language-haskell/pull/105))
  - Highlight the `import` and `autogen-modules` fields in `.cabal` files
    ([#105](https://github.com/JustusAdam/language-haskell/pull/105))
  - Fix an issue where operators starting with `::` were incorrectly treated as type signatures
    ([#106](https://github.com/JustusAdam/language-haskell/pull/106))
  - Highlight `COMPLETE` pragmas ([#107](https://github.com/JustusAdam/language-haskell/pull/107))
  - Highlight `INLINEABLE` pragmas ([#107](https://github.com/JustusAdam/language-haskell/pull/107))
  - Highlight `COLUMN` pragmas ([#107](https://github.com/JustusAdam/language-haskell/pull/107))
- Fixed highlighting for multi line type aliases
  ([#111](https://github.com/JustusAdam/language-haskell/issues/111))
- Fixed highlighting of string literals in deprecation pragmas
  ([#112](https://github.com/JustusAdam/language-haskell/issues/112))
- Specialized highlighting for `signature`, to permit it as an identifier
  ([#108](https://github.com/JustusAdam/language-haskell/issues/108))
- Fixed comments occurring in place of export lists
  ([#104](https://github.com/JustusAdam/language-haskell/issues/104))
- Pragmas are now case insensitive ([#81](https://github.com/JustusAdam/language-haskell/issues/81))
- Fixed matcher for end of type annotations. Facilitates indented `module` blocks
  ([#91](https://github.com/JustusAdam/language-haskell/issues/91)) and standalone deriving
  ([#89](https://github.com/JustusAdam/language-haskell/issues/89))
- Updated cabal grammar ([#93](https://github.com/JustusAdam/language-haskell/issues/93))
- Shoddily fixed promotion ticks ([#71](https://github.com/JustusAdam/language-haskell/issues/71))
- Added support for custom type operators
  ([#70](https://github.com/JustusAdam/language-haskell/issues/70))
- Support for single-line `deriving via` and `deriving ... via ...` ([#72](https://github.com/JustusAdam/language-haskell/issues/72))
- Rudimentary support for pattern synonyms ([#72](https://github.com/JustusAdam/language-haskell/issues/72))
- Better support for type families and type instances ([#72](https://github.com/JustusAdam/language-haskell/issues/72))
- Fixed highlighting for type level integers ([#51](https://github.com/JustusAdam/language-haskell/issues/51))
- Improved support for type definitions
  - Constructors are now highlighted properly in definitions
  - Fixed highlighting for records ([#38](https://github.com/JustusAdam/language-haskell/issues/38))
  - Type signatures are now highlighted properly in single-line type definitions
  - GADT's can now span multiple lines ([#102](https://github.com/JustusAdam/language-haskell/issues/102))
  - Implemented existential types ([#39](https://github.com/JustusAdam/language-haskell/issues/39))
  - `data` and `newtype`s can now include kind signatures ([#35](https://github.com/JustusAdam/language-haskell/issues/35))
- Support for foreign imports (see https://www.haskell.org/onlinereport/haskell2010/haskellch8.html)
  ([#44](https://github.com/JustusAdam/language-haskell/issues/44))
- Support for visible type applications ([#73](https://github.com/JustusAdam/language-haskell/issues/73))
- Support for nested block comments by [@reactormonk](https://github.com/reactormonk)
- `module` and `pattern` keyword in export lists
  ([#18](https://github.com/JustusAdam/language-haskell/issues/18))
- Fixed parentheses handling in export lists and made the colouring more consistent
  ([#69](https://github.com/JustusAdam/language-haskell/issues/69))
- Corrected comment delimiter for literate Haskell files. By [@sjorn3](https://github.com/sjorn3) in
  [#87](https://github.com/JustusAdam/language-haskell/pull/87/files)
- As a substantial internal change the grammar migratd to the YAML format, to make it easier to
  maintain and develop with.
- Refined many of the tm scopes with new information available from the parser

## 2.7.0 - 29.12.2019

- Fixed the no-indent regex
  ([#86](https://github.com/JustusAdam/language-haskell/issues/86))
- Changing auto indent rules to only trigger on first line after indent.
  Contributed in [#92](https://github.com/JustusAdam/language-haskell/pull/92)
  by [@hanjinko](https://github.com/hajinko)

## 2.6.0 - 05.04.2019

- Highlighting for backpack signature files added. Contributed in
  [#74](https://github.com/JustusAdam/language-haskell/pull/74) by
  [@edmundnoble](https://github.com/edmundnoble)
- `mixins` keyword added to the cabal grammar. Contributed in
  [#76](https://github.com/JustusAdam/language-haskell/pull/76) by
  [@arkrost](https://github.com/arkrost)
- Module qualifiers in infix applications are now distinguished through
  highlighting. Contributed in
  [#58](https://github.com/JustusAdam/language-haskell/pull/58) by
  [@sheaf](https://github.com/sheaf)
- Support for LiquidHaskell annotations added in
  [#78](https://github.com/JustusAdam/language-haskell/pull/78) by
  [@ranjitjhala](https://github.com/ranjitjhala)
  - Add support for LiquidHaskell annotations

## 2.5.0 - 12.05.2018

- Adds support for numeric literals as defined in [this
  proposal](https://github.com/ghc-proposals/ghc-proposals/blob/master/proposals/0009-numeric-underscores.rst#new-syntax-this-proposal)
  in [#49](https://github.com/JustusAdam/language-haskell/pull/49) by
  [@takenobu-hs](https://github.com/takenobu-hs)
- Added code injection to markdown for Haskell (`hs`, `haskell`), literate
  Haskell (`lhs`, `literate-haskell`) and Cabal (`Cabal`) in
  [#55](https://github.com/JustusAdam/language-haskell/pull/55),
  [#56](https://github.com/JustusAdam/language-haskell/pull/56) and
  [#57](https://github.com/JustusAdam/language-haskell/pull/57) by
  [@glebec](https://github.com/glebec)
- Fixed parsing for type-level strings
  ([#50](https://github.com/JustusAdam/language-haskell/pull/50))
- Fixed highlighting of empty type classes.
  ([#66](https://github.com/JustusAdam/language-haskell/issues/66))

## 2.4.0 - 06.10.2017

- Merged pull request
  [#45](https://github.com/JustusAdam/language-haskell/pull/45) by
  [@Porges](https://github.com/Porges)
    - Add support for some UnicodeSyntax
- Enabling off-side code folding (new feature since vscode 1.17) Folding a
    region of code does not fold empty lines trailing the region anymore
- Merged pull request
  [#47](https://github.com/JustusAdam/language-haskell/pull/47) by
  [@scott-fleischman](https://github.com/scott-fleischman)
    - Add `haskell.indentationRules.enabled` setting to disable automatic
      indentation via user settings

## 2.3.2 - 18.08.2017

- Fixed highlighting for alternate control character syntax. Solves issue
  [#42](https://github.com/JustusAdam/language-haskell/issues/43)

## 2.3.1 - 18.07.2017

- Patch release to fix version invalidity

## 2.3 - 18.07.2017

- Merged pull request
  [#37](https://github.com/JustusAdam/language-haskell/pull/37) by
  [@jBugman](https://github.com/jBugman)
    - Adds `custom-setup` section to cabal syntax
    - Adds support for line comments (`--`) to cabal syntax
- Changed logo to png (svg is not supported anymore)

## 2.2.3 - 29.06.2017

- Adapted increaseIndentPattern to skip keywords followed by `'` (related to the
  handling of `keyword'` identifiers as reported in
  [#31](https://github.com/JustusAdam/language-haskell/issues/31))
- Fixed terminating type signatures on `else`, `then` etc.
- Fixed not increasing indent for one-line `if` (see
  [#34](https://github.com/JustusAdam/language-haskell/issues/34))

## 2.2.2 - 27.06.2017

- Fixed highlighting for `where` keyword in GADT definition
- Fixed highlighting for `<-` and following expression when preceeded by type
  signature (see
  [#28](https://github.com/JustusAdam/language-haskell/issues/28))
- Added `mdo` and `rec` to keywords (see
  [#29](https://github.com/JustusAdam/language-haskell/issues/29))
- Added automatic indent for `mdo` blocks
- Changed keyword regexes to not fire when followed by `'` (see
  [#31](https://github.com/JustusAdam/language-haskell/issues/31))
- Fixed highlighing for qualified infix functions (see
  [#30](https://github.com/JustusAdam/language-haskell/issues/30))

## 2.2.1 - 07.06.2017

- Removed snippets contribution from package.json (fixes `ENOENT: no such file
  or directory` error) discovered and fixed by
  [@dsifford](https://gihub.com/dsifford)

## 2.2.0 - 26.05.2017

- Removed snippets by request from [@Eugleo](https://github.com/Eugleo) in
  [#25](https://github.com/JustusAdam/language-haskell/issues/25)

## 2.1.1 - 15.04.2017

- Fixed two issues with highlighting for deriving clauses
    - Added a new rule for deriving clauses of single class without parentheses
      (see [#15](https://github.com/JustusAdam/language-haskell/issues/15) and
      [#19](https://github.com/JustusAdam/language-haskell/issues/19))
    - Modified old rule inner matches to be recursive -> Adds correct
      highlighting for parethesised class type arguments

## 2.1.0  - 12.03.2017

- Fixed an issue where type signature detection would not end at end of record
  definition
- Added GHC pragmas and directives (thank you to
  [@metaleap](https://github.com/metaleap))

## 2.0.0 - 15.02.2017

- Retroactive version bump due to large previous changes
- License changed

## 1.5.0 - 13.02.2017

- Removed highlighting for prelude functions, as it is confusing. (see
  [#11](https://github.com/JustusAdam/language-haskell/issues/11))
- New rules:
    - to recognize and correctly highlight inline type signatures (reported in
      [#11](https://github.com/JustusAdam/language-haskell/issues/11))
    - for `type` to highlight left and right side of `=` as type signature
    - for `data` to highlight only right side of `=` as type signature
    - for distinction between comments and haddock documentation

## 1.4.4 - 12.01.2017

- Fixed a bug where in consecutive type signatures the later ones are not
  highlighed properly

## 1.4.3 - 23.12.2016

- Removing auto closing `'` per suggestion from
  [@HuwCampbell](https://github.com/HuwCampbell) (see
  [#9](https://github.com/JustusAdam/language-haskell/issues/9))

### 1.4.2 - 21.12.2016

- Changing grammar to accomodate indented functions

### 1.4.1 - 21.12.2016

- Changing grammar to try and fix the markup of function names preceeding type
  signatures

### 1.4.0 - 17.12.2016

- Manual merging of changes from
  [haskell.tmbundle#18](https://github.com/textmate/haskell.tmbundle/pull/18) by
  [@sanssecours](https://github.com/sanssecours) for several markup fixes (most
  importantly multi line type signatures (see
  [#1](https://github.com/JustusAdam/language-haskell/issues/1)))

### 1.3.0

- Replacing typescript initializer with json configuration
- Adding smart brackets

### 1.2.3

- PR from [@Miguel-Fontes](https://github.com/Miguel-Fontes) to
    - add markup for literate haskell files (see
      [#7](https://github.com/JustusAdam/language-haskell/issues/7))
    - add markup for embedded haskell code in latex
