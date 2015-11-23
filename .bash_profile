# Promt
PS1='\[\e[1;33m\][\D{%T}] ${PWD}\[\e[0m\]\n\[\e[1;31m\]\$\[\e[0m\] '
PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

# Color ls
alias ls='ls --color=auto'

# Android SDK
export ANDROID_HOME=$HOME/app/lib/android-sdk

# Bins
export PATH=$PATH:$HOME/bin
