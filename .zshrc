export GOPATH=$HOME/Projects/go
export PATH=$GOPATH/bin:$PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

export COPYFILE_DISABLE=1
export HOMEBREW_NO_AUTO_UPDATE=1

export DELTA_PAGER="less --mouse"

# load custom executable functions
for function in ~/.zsh/functions/*; do
  source $function
done

# load all config scripts
for config in ~/.zsh/config/*; do
  source $config
done

source "$HOME/.cargo/env"

# bun completions
[ -s "/Users/martinrue/.bun/_bun" ] && source "/Users/martinrue/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

