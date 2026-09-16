PREFIX ?= $(HOME)

CONFIG_DIR := $(PREFIX)/.config
BIN_DIR    := $(PREFIX)/.local/bin

CONFIG_SRC := dotconfig
BIN_SRC    := bin

CONFIGS := $(notdir $(wildcard $(CONFIG_SRC)/*))
BINS    := $(notdir $(wildcard $(BIN_SRC)/*))

.PHONY: all install config bin clean

all: install

install: config bin

config:
	@mkdir -p $(CONFIG_DIR)
	@for config in $(CONFIGS); do \
		printf 'Installing config: %s\n' "$$config"; \
		mkdir -p "$(CONFIG_DIR)/$$config"; \
		cp -r "$(CONFIG_SRC)/$$config/." "$(CONFIG_DIR)/$$config/"; \
	done

bin:
	@mkdir -p $(BIN_DIR)
	@for bin in $(BINS); do \
		printf 'Installing bin: %s\n' "$$bin"; \
		install -m 755 "$(BIN_SRC)/$$bin" "$(BIN_DIR)/$$bin"; \
	done

clean:
	@echo "Nothing to clean."

