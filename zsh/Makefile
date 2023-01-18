DOTFILES_DIR := ${HOME}/dotfiles

.PHONY: init
init:
	ln -svf ${DOTFILES_DIR}/.zshrc ${HOME}/.zshrc && \
	ln -svf ${DOTFILES_DIR}/.zprofile ${HOME}/.zprofile
	source ${HOME}/.zshrc

.PHONY: clean
clean:
	unlink ${HOME}/.zshrc || true && \
	unlink ${HOME}/.zprofile || true
