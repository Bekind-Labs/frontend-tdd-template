# Makefile

.PHONY: all build lint typecheck run test coverage ci clean distclean

NPM=npm
RM=rm -f

# Reinstall dependencies only when package-lock.json has changed.
NODE_MODULES=node_modules/.package-lock.json

all: lint typecheck test

build: $(NODE_MODULES)
	$(NPM) run build

lint: $(NODE_MODULES)
	$(NPM) run lint

typecheck: $(NODE_MODULES)
	$(NPM) run typecheck

run: $(NODE_MODULES)
	$(NPM) run dev

test: $(NODE_MODULES)
	$(NPM) run test

coverage: $(NODE_MODULES)
	$(NPM) run coverage

ci:
	$(NPM) ci

$(NODE_MODULES): package-lock.json
	$(NPM) ci

clean:
	-$(RM) -r ./dist ./coverage

distclean: clean
	-$(RM) -r ./node_modules
