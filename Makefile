SHELL=/bin/zsh

.PHONY: all
all:
	install apply

.PHONY: apply
apply: zsh git

.PHONY: clean
clean:
	cd zsh && make clean && \
	cd ../git && make clean && \

.PHONY install
install:
	cd install && make

.PHONY zsh
zsh:
	cd zsh && make

.PHONY git
git:
	cd git && make
