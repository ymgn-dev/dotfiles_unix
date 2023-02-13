DOTFILES_DIR := ${HOME}/dotfiles

.PHONY: init
init:
	[ -d ${HOME}/.config/ ] || mkdir -p ${HOME}/.config/
	cp -rf ${DOTFILES_DIR}/nvim/config ~/.config/nvim

.PHONY: clean
clean:
	rm -rf ~/.config/nvim

.PHONY: backup
backup:
	mv ~/.config/nvim ~/.config/nvim.bak
	mv ~/.local/share/nvim ~/.local/share/nvim.bak
	mv ~/.local/state/nvim ~/.local/state/nvim.bak
	mv ~/.cache/nvim ~/.cache/nvim.bak
