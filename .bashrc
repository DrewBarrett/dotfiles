#
# ~/.bashrc
#
source /usr/share/doc/pkgfile/command-not-found.bash
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

#eval $(thefuck --alias)

alias config='/usr/bin/git --git-dir=/home/drew/.dotfiles/ --work-tree=/home/drew'
alias ls='ls --color=auto'
alias ll='ls -l'
