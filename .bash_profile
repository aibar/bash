# Promt
PS1='\[\e[1;33m\][\D{%T}] ${PWD}\[\e[0m\]\n\[\e[1;31m\]\$\[\e[0m\] '
PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

# Bins
PATH=$PATH:$HOME/bin

# Docker
function docker() {
    ssh vagrant@192.168.50.10 -tt "cd $PWD && sudo docker $@"
}

function box() {
    ssh vagrant@192.168.50.10
}
export -f docker
export -f box
