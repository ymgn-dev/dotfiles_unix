SHELL=/bin/zsh

.PHONY: all
all: install apply

.PHONY: install
install: 
	cd install && make

.PHONY: apply
apply: zsh git nvim

.PHONY: clean
clean:
	cd zsh && make clean && \
	cd ../git && make clean && \
	cd ../nvim && make clean

.PHONY: zsh
zsh:
	cd zsh && make

.PHONY: git
git:
	cd git && make

.PHONY: nvim
nvim:
	cd nvim && make
