# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"
#init scipt ---------- {{{ 
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.emacs.d/bin:$PATH"
source ~/.profile
# }}}

# other configs -------- {{{
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions zsh-z)
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

bindkey -r '^T'
bindkey '^F' fzf-file-widget

# unbind control L to clear terminal
bindkey -r '^L'
# }}}

#{{{ aliases===============

alias zshrc="vim ~/.zshrc"
alias zshrcs="source ~/.zshrc"
alias vimrc="vim ~/.config/nvim/init.lua"
alias vimrcs="source ~/.config/nvim/init.vim"
alias vim=lvim
alias ohmyzsh="vim ~/.oh-my-zsh"
alias ll="exa -l -g --icons"
alias ls="exa --icons"
alias lt="exa --tree --icons -a -I '.git|__pycache__|.mypy_cache|.ipynb_checkpoints'"
alias gitmerge="git checkout $1 && git pull && git checkout - && git merge -"

# show file previews for fzf using bat
alias fp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
#}}}


# end script -------------- {{{
# }}}


alias config='/usr/bin/git --git-dir=/Users/tanhopdo/.cfg/ --work-tree=/Users/tanhopdo'
alias config='/usr/bin/git --git-dir=/Users/tanhopdo/.cfg/ --work-tree=/Users/tanhopdo'
eval "$(pyenv init --path)"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"
