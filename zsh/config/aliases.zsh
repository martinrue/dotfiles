alias l='ls -lAh'
alias ll='ls -lh'

alias nvim='nvim 2> /dev/null'
alias nvim.='nvim +Files'

alias n='nodenv'
alias uuid='uuidgen | tr "[:upper:]" "[:lower:]" | tr -d "\n"'
alias tree='tree --noreport -I "node_modules|dist|static|vendor|_site"'

alias stoprethinkdb='brew services stop rethinkdb'
alias startrethinkdb='brew services start rethinkdb'
alias rethinkconnections='lsof -i -n -P | grep ESTABLISHED | grep rethink'

alias dps='docker ps -a'
alias ds='docker stop'
alias dsa='docker stop $(docker ps -qa)'
alias drm='docker rm'
alias drma='docker rm $(docker ps -qa)'
alias di='docker images'
alias drmi='docker rmi'
alias db='docker build -t'
alias dr='docker run -t'
alias dsp='docker system prune'
