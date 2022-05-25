XDG_CONFIG_HOME := $(HOME)/.config

.PHONY: install
install: ## Sets up symlink for user and root .vimrc for vim and neovim.
	mkdir -p "$(XDG_CONFIG_HOME)"
	ln -snf "$(CURDIR)" "$(XDG_CONFIG_HOME)/nvim"



check_defined = \
				$(strip $(foreach 1,$1, \
				$(call __check_defined,$1,$(strip $(value 2)))))
__check_defined = \
				  $(if $(value $1),, \
				  $(error Undefined $1$(if $2, ($2))$(if $(value @), \
				  required by target `$@')))


.PHONY: help
help:
	@grep -E '^[a-zA-Z_-.]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
