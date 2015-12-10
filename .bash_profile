# Promt
PS1='\[\e[1;33m\][\D{%T}] ${PWD}\[\e[0m\]\n\[\e[1;31m\]\$\[\e[0m\] '
PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

# Android SDK
ANDROID_HOME=$HOME/app/lib/android-sdk

# Bins
PATH=$PATH:$HOME/bin:$HOME/.npm_prefix/bin

export ANDROID_HOME PATH
