alias l='ls -lAh'
alias ll='ls -lh'

alias nvim='nvim 2> /dev/null'
alias nvim.='nvim +Files'

alias uuid='uuidgen | tr "[:upper:]" "[:lower:]" | tr -d "\n"'
alias n='nodenv'
alias tree='tree --noreport -I "node_modules|dist|static|vendor"'

alias stoprethinkdb='brew services stop rethinkdb'
alias startrethinkdb='brew services start rethinkdb'
alias rethinkconnections='lsof -i -n -P | grep ESTABLISHED | grep rethink'
