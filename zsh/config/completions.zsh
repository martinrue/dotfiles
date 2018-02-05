# load our own completion functions
fpath=(~/.zsh/completions /usr/local/share/zsh/site-functions $fpath)

# completion
autoload -U compinit
compinit

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending
