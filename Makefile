all: link

link:
	@ln -sfn ~/.dotfiles/zsh ~/.zsh
	@ln -sfn ~/.dotfiles/nvim ~/.config/nvim
	@ln -sf  ~/.dotfiles/.zshrc ~/.zshrc
	@mkdir -p ~/.config/ghostty
	@ln -sf  ~/.dotfiles/.ghostty ~/.config/ghostty/config
	@ln -sf  ~/.dotfiles/.gitconfig ~/.gitconfig
	@ln -sf  ~/.dotfiles/.gitignore ~/.gitignore
	@ln -sf  ~/.dotfiles/.gitmessage ~/.gitmessage
	@mkdir -p ~/.hammerspoon
	@ln -sf  ~/.dotfiles/.hammerspoon.lua ~/.hammerspoon/init.lua

clean:
	@rm -rf ~/.zsh ~/.config/nvim ~/.zshrc ~/.ghostty ~/.gitconfig ~/.gitignore ~/.gitmessage ~/.hammerspoon

.PHONY: link clean
