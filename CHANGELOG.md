## 2.1.1 - 15.04.2017

- Fixed two issues with highlighting for deriving clauses
    - Added a new rule for deriving clauses of single class withut parentheses
    - Modified old rule inner matches to be recursive -> Adds correct highlighting for parethesised class type arguments

## 2.1.0  - 12.03.2017

- Fixed an issue where type signature detection would not end at end of record definition
- Added GHC pragmas and directives (thank you to @metaleap)

## 2.0.0 - 15.02.2017

- Retroactive version bump due to large previous changes 
- License changed

## 1.5.0 - 13.02.2017

- Removed highlighting for prelude functions, as it is confusing.
- New rules:
    - to recognize and correctly highlight inline type signatures
    - for `type` to highlight left and right side of `=` as type signature
    - for `data`to highlight only right side of `=` as type signature
    - for distinction between comments and haddock documentation

## 1.4.4 - 12.01.2017

- Fixed a bug where in consecutive type signatures the later ones are not highlighed properly

## 1.4.3 - 23.12.2016

- Removing auto closing `'` per suggestion from @HuwCampbell, as they are more often used as primes and data kind ticks than character literals.

### 1.4.2 - 21.12.2016

- Changing grammar to accomodate indented functions

### 1.4.1 - 21.12.2016

- Changing grammar to try and fix the markup of function names preceeding type signatures

### 1.4.0 - 17.12.2016

- Manual merging of changes from https://github.com/textmate/haskell.tmbundle/pull/18 for several markup fixes (most importantly multi line type signatures)

### 1.3.0

- Replacing typescript initializer with json configuration
- Adding smart brackets

### 1.2.3

- PR from @Miguel-Fontes to 
    - add markup for literate haskell files
    - add markup for embedded haskell code in latex
