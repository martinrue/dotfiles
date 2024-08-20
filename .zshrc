export GOPATH=$HOME/Projects/go
export PATH=$GOPATH/bin:$PATH
export PATH="/usr/local/opt/postgresql@15/bin:$PATH"
export COPYFILE_DISABLE=1
export HOMEBREW_NO_AUTO_UPDATE=1
export PATH="/opt/homebrew/bin:$PATH"

# load custom executable functions
for function in ~/.zsh/functions/*; do
  source $function
done

# load all config scripts
for config in ~/.zsh/config/*; do
  source $config
done
