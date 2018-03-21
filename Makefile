.PHONY: files deploy init

DOTFILES_EXCLUDES := .DS_Store .git .gitmodules .travis.yml .editorconfig
DOTFILES_TARGET   := $(wildcard .??*) bin fish
DOTFILES_DIR      := $(PWD)
DOTFILES_FILES    := $(filter-out $(DOTFILES_EXCLUDES), $(DOTFILES_TARGET))

files:
	@echo $(DOTFILES_FILES)

# list: ## Show dot files in this repo
# 	@$(foreach val, $(DOTFILES), /bin/ls -dF $(val);)

deploy: ## Create symlink to home directory
	@$(foreach val, $(DOTFILES_FILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)

init:
	@$(foreach val, $(wildcard ./etc/init/*.sh), bash $(val);)
