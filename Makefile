NPM := npm
NPX := npx
VSCE := node_modules/.bin/vsce
ARGS = `arg="$(filter-out $@,$(MAKECMDGOALS))" && echo $${arg:-${1}}`

.PHONY: changelog
changelog: install
	npx changie batch $(call ARGS,defaultstring)
	npx changie merge

.PHONY: change
change: install
	npx changie new

.PHONY: clean
clean:
	rm -rf \
		out \
		*.vsix \
		.vscode-test \
		node_modules \
		.claude

.PHONY: install
install:
	$(NPM) ci

.PHONY: package
package:
	rm -f *.vsix
	$(VSCE) package

.PHONY: login
login:
	$(VSCE) login ChrisWiegman

.PHONY: publish
publish: package
	$(VSCE) publish
