# Set the default FZF command to use ripgrep
FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
export -U FZF_DEFAULT_COMMAND
