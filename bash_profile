# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

alias ll='ls -alh'
alias rm='rm -f'
LANG=zh_CN.UTF-8
PS1="[\d|\@|\u@\H \w]\$ "
