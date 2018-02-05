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
	@ln -sf  ~/.dotfiles/.stark.js ~/.stark.js

clean:
	@rm -rf ~/.zsh ~/.vim ~/.zshrc ~/.vimrc ~/.gitconfig ~/.gitignore ~/.gitmessage ~/.ignore ~/.stark.js

.PHONY: link clean
