#
# ~/.bashrc
#
if [ -f /etc/bashrc ]; then
      . /etc/bashrc   # --> Read /etc/bashrc, if present.
fi
if [ -f /usr/share/doc/pkgfile/command-not-found.bash ]; then
      source /usr/share/doc/pkgfile/command-not-found.bash
fi
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='[\u@\h \W]\$ ' ### lame with no colors
export PS1="\[\033[38;5;7m\][\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;4m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;2m\]\h\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;7m\]]\[$(tput sgr0)\]\[\033[38;5;15m\] \W \[$(tput sgr0)\]\[\033[38;5;7m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"  ### super cool with colors
#eval $(thefuck --alias)

if [ -f $HOME/.alias ]; then
      source $HOME/.alias
fi
