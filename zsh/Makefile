DOTFILES_DIR := ${HOME}/dotfiles

.PHONY: init
init:
	ln -svf ${DOTFILES_DIR}/zsh/.zshrc ${HOME}/.zshrc && \
	ln -svf ${DOTFILES_DIR}/zsh/.zprofile ${HOME}/.zprofile

.PHONY: clean
clean:
	unlink ${HOME}/.zshrc || true && \
	unlink ${HOME}/.zprofile || true
