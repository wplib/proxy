#
# Makefile for Docker
# 

VERSIONS = $(sort $(dir $(wildcard */)))

BASEDIR = $(shell pwd)

.PHONY: build push release clean list

################################################################################
# Image related commands.

build:
	@echo "Building for versions: $(VERSIONS)"
	$(foreach ver,$(VERSIONS), cd $(BASEDIR)/$(ver); make $@;)

push:
	@echo "Pushing to GitHub for versions: $(VERSIONS)"
	$(foreach ver,$(VERSIONS), cd $(BASEDIR)/$(ver); make $@;)

release:
	$(foreach ver,$(VERSIONS), cd $(BASEDIR)/$(ver); make $@;)

clean:
	@echo "Cleaning up for versions: $(VERSIONS)"
	$(foreach ver,$(VERSIONS), cd $(BASEDIR)/$(ver); make $@;)

list:
	@echo "Listing for versions: $(VERSIONS)"
	$(foreach ver,$(VERSIONS), cd $(BASEDIR)/$(ver); make $@;)


################################################################################
default: build

