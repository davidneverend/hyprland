#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias cls='clear'
alias ll='ls -la --color=auto'
alias sshmini='ssh david@192.168.1.250'


