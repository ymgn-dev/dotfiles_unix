DOTFILES_DIR := ${HOME}/dotfiles

.PHONY: init
init:
	[ -d ${HOME}.config/nvim/ ] || mkdir -p ${HOME}.config/nvim/
	[ -d ${HOME}.config/nvim/lua/ ] || mkdir -p ${HOME}.config/nvim/lua/
	ln -svf ${DOTFILES_DIR}/nvim/init.lua ${HOME}.config/nvim/init.lua && \
	ln -svf ${DOTFILES_DIR}/nvim/lua/plugins.lua ${HOME}.config/nvim/lua/plugins.lua

.PHONY: clean
clean:
	unlink ${HOME}.config/nvim/init.lua
	unlink ${HOME}.config/nvim/lua/plugins.lua
	rm -rf ${HOME}.config/nvim/
