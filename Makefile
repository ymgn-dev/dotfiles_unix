SHELL=/bin/zsh

.PHONY: all
all: install apply

.PHONY: install
install: 
	cd install && make

.PHONY: apply
apply: zsh git

.PHONY: clean
clean:
	cd zsh && make clean && \
	cd ../git && make clean && \

.PHONY: zsh
zsh:
	cd zsh && make

.PHONY: git
git:
	cd git && make
