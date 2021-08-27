#!/bin/bash

baseDir=$(dirname "$PWD")
echo "Running tests from base directory $baseDir"

# Arrays containing full test filepaths.
named=("$PWD"/tests/*)
tickets=("$PWD"/tickets/*)

# Arrays containing filenames of broken tests.
namedBroken=()
ticketsBroken=(
  "T0153.hs"
  "T0165.hs"
  "T0167.hs"
  "T0178.hs"
  "T0189.y"
  "T0190.hs"
)

# Colours used to display test outputs.
RED='\033[0;31m'
MAGENTA='\033[0;35m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NC='\033[0m'

# 'runTests' runs the 'vscode-tmgrammar-test' command on all test files in a directory,
# reporting which tests had unexpected outcomes.
#
# runTests
#   :: [ FilePath ]      -- ^ $1: array of tests to be run.
#   -> [ TestName ]      -- ^ $2: array of filenames in this directory for tests that are expected to fail.
#   -> MArray s TestName -- ^ $3: array of tests that unexpectedly failed (this function appends these to the array)
#   -> MArray s TestName -- ^ $4: array of tests that unexpectedly passed (this function appends these to the array).
#   -> ST s ExitCode     -- ^ Exit code: 0 if no unexpected outcomes, 1 otherwise.
runTests () {

  local -n dir=$1
  local -n expectedFails=$2
  local -n fails=$3
  local -n passes=$4

  syntaxes=()
  source=""

  for filepath in "${dir[@]}"
  do
    file=$(basename -- "$filepath")
    ext="${file##*.}"
    name="${file%.*}"

    # Check whether the test is expected to fail.
    expectBroken=0
    for broken in "${expectedFails[@]}"
    do
      if [ "$broken" == "$file" ]
      then
        expectBroken=1
      fi
    done

    # Set the appropriate syntax file for the test.
    case $ext in

      "hs" | "hs-boot" | "hsig" )
        syntaxes=( "$baseDir/syntaxes/haskell.json" )
        source="source.haskell"
        ;;

      "cabal" )
        syntaxes=( "$baseDir/syntaxes/cabal.json" )
        source="source.cabal"
        ;;

      "lhs" )
        syntaxes=( "$baseDir/syntaxes/haskell.json" "$baseDir/syntaxes/literateHaskell.json" )
        source="text.tex.latex.haskell"
        ;;

      "x" )
        syntaxes=( "$baseDir/syntaxes/alex.json" "$baseDir/syntaxes/haskell.json" )
        source="source.haskell.alex"
        ;;

      "y" )
        syntaxes=( "$baseDir/syntaxes/happy.json" "$baseDir/syntaxes/haskell.json" )
        source="source.haskell.happy"
        ;;

      * )
        syntaxes=()
        source=""
        ;;

    esac

    if [ ${#syntaxes[@]} -eq 0 ]
    then
      echo "runTests: $file has unsupported file extension '$ext', ignoring"
    else
      specifySyntaxes=""
      for i in ${syntaxes[*]}; do
        specifySyntaxes="$specifySyntaxes -g $i"
      done
      # Run the test.
      result=$(npx vscode-tmgrammar-test -s "$source" $specifySyntaxes -t "$filepath")
      # Check test result by inspecting the exit code of the previous command.
      status=$?
      if [ $status -eq 0 ]
      then
        if [ $expectBroken -eq 0 ]
        then
          echo -e "${GREEN}Pass   (expected)${NC} $file"
        else
          passes+=("$name")
          echo -e "${MAGENTA}Pass (unexpected)${NC} $file"
        fi
      else
        if [ $expectBroken -eq 0 ]
        then
          fails+=("$name")
          echo -e "${RED}Fail (unexpected)${NC} $file"
          echo -e "$result"
        else
          echo -e "${YELLOW}Fail   (expected)${NC} $file"
        fi
      fi
    fi
  done
}

# Initialise arrays of tests with unexpected results.
unexpectedFails=()
unexpectedPasses=()

# Run the named tests (in the 'tests' folder).
runTests named   namedBroken   unexpectedFails unexpectedPasses
# Run the ticket tests (in the 'tickets' folder).
runTests tickets ticketsBroken unexpectedFails unexpectedPasses

# Return the appropriate exit code.
if [ ${#unexpectedFails[@]} -eq 0 ] && [ ${#unexpectedPasses[@]} -eq 0 ]
then
  # No unexpected test outcomes.
  exit 0
else
  # Unexpected test outcomes.
  exit 1
fi
