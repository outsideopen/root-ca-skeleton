ECHO_MSG?=      echo

default: help

help:
	@echo "The following commands are valid"; \
	echo " cert   Creates a new certificate"; \
	echo " full   Creates and signs a certificate" ;\
	echo " sign   Signs a certificate"; \

cert:
	@./scripts/makecert.sh

sign:
	@./scripts/signcert.sh

full:
	@./scripts/full.sh

package:
	@./scripts/package.sh

build:
	@./scripts/build.sh