all: link

link:
	@ln -sfn ~/.dotfiles/zsh ~/.zsh
	@ln -sfn ~/.dotfiles/vim ~/.vim
	@ln -sf  ~/.dotfiles/.zshrc ~/.zshrc
	@ln -sf  ~/.dotfiles/.vimrc ~/.vimrc
	@ln -sf  ~/.dotfiles/.gitconfig ~/.gitconfig
	@ln -sf  ~/.dotfiles/.gitignore ~/.gitignore
	@ln -sf  ~/.dotfiles/.gitmessage ~/.gitmessage
	@ln -sf  ~/.dotfiles/.ignore ~/.ignore
	@mkdir -p ~/.hammerspoon
	@ln -sf  ~/.dotfiles/.hammerspoon.lua ~/.hammerspoon/init.lua

clean:
	@rm -rf ~/.zsh ~/.vim ~/.zshrc ~/.vimrc ~/.gitconfig ~/.gitignore ~/.gitmessage ~/.ignore ~/.hammerspoon

.PHONY: link clean
