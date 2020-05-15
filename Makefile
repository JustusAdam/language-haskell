CONVERT=npx js-yaml
SYNTAXES=haskell cabal literateHaskell
JSON_TARGETS=$(addsuffix .json,$(addprefix syntaxes/,$(SYNTAXES)))
SCOPE_LISTS=$(addsuffix .md,$(addprefix scope-lists/,$(SYNTAXES)))

.PHONY: all test publish

all: $(JSON_TARGETS) $(SCOPE_LISTS)

scope-lists/%.md: scope-lists/%.yaml
	scope-lists/refresh.hs md $< $@

scope-lists/%.yaml: syntaxes/%.YAML-tmLanguage
	scope-lists/refresh.hs db $< $@

test: all
	cd test && bash test.sh

%.json: %.YAML-tmLanguage
	$(CONVERT) $< > $@

$(CONVERT):
	npm install js-yaml

publish: all
	vsce publish
