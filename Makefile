.PHONY: install
install:
	@echo "Configuration of $t syncing..."
	@cp ./$t ~/.$t
	@echo "Configuration of $t sync done."

.PHONY: hammerspoon
hammerspoon:
	@make install t=hammerspoon

.PHONY: nvim
nvim:
	@make install t=nvim

.PHONY: kkconf
kkconf:
	@make install t=kkconf.yaml

.PHONY: p10k
p10k:
	@make install t=p10k.zsh

.PHONY: skhd
skhd:
	@make install t=skhdrc

.PHONY: vim
vim:
	@make install t=vimrc

.PHONY: yabai
yabai:
	@make install t=yabairc

.PHONY: zsh
zsh:
	@make install t=zshrc
