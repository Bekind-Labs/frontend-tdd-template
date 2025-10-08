# Makefile

.PHONY: all build lint run test clean

NPM=npm
RM=rm -f

all:

build: ci
	$(NPM) run build

lint: ci
	$(NPM) run lint

run: ci
	$(NPM) run dev

test: ci
	$(NPM) run test

ci:
	$(NPM) ci

clean:
	-$(RM) -r ./dist
