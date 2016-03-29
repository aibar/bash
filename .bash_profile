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
function git_info() {
    info="* $(git rev-parse --abbrev-ref HEAD)"
    if [[ -n "$(git status --porcelain 2> /dev/null)" ]]; then
        info="$info [no]"
    fi
    echo "$info"
}

# Colors
Z="\033[m"
Y="\033[1;33m"
R="\033[1;31m"
G="\033[1;32m"
B="\033[1;34m"

# Promt
PS1="\[$Y\][\D{%T}] \w\[$Z\] \[$G\]\$(is_git && git_info)\[$Z\]\n\[$R\]\$ \[$Z\]"
PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

# Aliases
alias la="ls -al $1"
alias nn="nano"

# Homes
export JAVA_HOME=~/app/dev/jdk
export JDK_HOME=~/app/dev/jdk
export MAVEN_HOME=~/app/dev/maven
export NODE_HOME=~/app/dev/node

# Bins
export PATH=$PATH:$HOME/bin:$MAVEN_HOME/bin:$NODE_HOME/bin:~/.npm_prefix/bin
