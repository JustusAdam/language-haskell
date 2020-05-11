CONVERT=npx js-yaml

.PHONY: all test

all: syntaxes/haskell.json syntaxes/cabal.json syntaxes/literateHaskell.json

test: all
	cd test && bash test.sh

%.json: %.YAML-tmLanguage
	$(CONVERT) $< > $@

$(CONVERT): 
	npm install js-yaml
