#
# ~/.bashrc
#
if [ -f /etc/bashrc ]; then
      . /etc/bashrc   # --> Read /etc/bashrc, if present.
fi
source /usr/share/doc/pkgfile/command-not-found.bash
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

#eval $(thefuck --alias)

source $HOME/.alias
