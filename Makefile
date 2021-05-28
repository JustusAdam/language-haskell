CONVERT=npx js-yaml
VSCE=npx vsce
SYNTAXES=haskell cabal literateHaskell alex happy
JSON_TARGETS=$(addsuffix .json,$(addprefix syntaxes/,$(SYNTAXES)))
SCOPE_LISTS=$(addsuffix .md,$(addprefix scope-lists/,$(SYNTAXES)))

.PHONY: all test publish package

all: $(JSON_TARGETS) $(SCOPE_LISTS)

scope-lists/%.md: scope-lists/%.yaml
	scope-lists/refresh.hs md $< $@

scope-lists/%.yaml: syntaxes/%.YAML-tmLanguage
	scope-lists/refresh.hs db $< $@

test: all
	cd test && bash test.sh

%.json: %.YAML-tmLanguage
	$(CONVERT) $< > $@

publish: all
	$(VSCE) publish

package: all
	$(VSCE) package
