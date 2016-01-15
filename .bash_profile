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

# Git
function is_git() {
    git rev-parse 2> /dev/null
}

function git_branch() {
    echo $(git rev-parse --abbrev-ref HEAD)
}

# Colors
Z="\033[m"
Y="\033[1;33m"
R="\033[1;31m"
G="\033[1;32m"
B="\033[1;34m"

# Promt
PS1="\[$Y\][\D{%T}] \w\[$Z\] \[$G\]* \$(is_git && git_branch)\[$Z\]\n\[$R\]\$ \[$Z\]"
