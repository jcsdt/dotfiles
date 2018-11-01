#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
if [ -n "$NVIM_LISTEN_ADDRESS" ]; then
export PS1="\[\u@\h \W\]» "
else
export PS1="\[\u@\h \W\]$ "
fi

if [ -n "$NVIM_LISTEN_ADDRESS" ]; then
if [ -x "$(command -v nvr)" ]; then
alias nvim=nvr
else
alias nvim='echo "No nesting!"'
fi
fi

# >>> Added by cnchi installer
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/nano

export PATH=$PATH:$HOME/.local/bin:$HOME/.cargo/bin
alias dotfiles="/usr/bin/git --git-dir=/home/jean/.dotfiles/ --work-tree=/home/jean"
