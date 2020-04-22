CONVERT=./node_modules/js-yaml/bin/js-yaml.js

all: syntaxes/haskell.json syntaxes/cabal.json syntaxes/literateHaskell.json

%.json: %.YAML-tmLanguage
	$(CONVERT) $< > $@
