#!/bin/sh
alias reloadshell='source $ZSHRC'
alias v='nvim'
alias vv='nvim .'
alias g='lazygit'
alias zshrc="nvim $ZDOTDIR"
alias zsh-update-plugins="find "$ZDOTDIR/plugins" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"
alias nvimrc='nvim ~/.config/nvim/'
alias txi='tmuxifier' # tmux session preset
alias tmuxrc='nvim ~/.tmux.conf'
alias cs="cht.sh" # cheatsheet for command lines

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# easier to read disk
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

alias m="git checkout master"
alias s="git checkout stable"

#config repo
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

case "$(uname -s)" in

Darwin)
	# echo 'Mac OS X'
	alias ls='ls -G'
	;;

Linux)
	alias ls='ls --color=auto'
	;;

CYGWIN* | MINGW32* | MSYS* | MINGW*)
	# echo 'MS Windows'
	;;
*)
	# echo 'Other OS'
	;;
esac
