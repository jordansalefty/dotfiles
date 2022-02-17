
# Set prompt
export PROMPT="%K{blue} %F{black}%~%f %k%F{blue}%f "

HISTFILE=~/.cache/zsh.history
HISTSIZE=1000
SAVEHIST=1000

setopt autocd
setopt extendedglob
setopt nomatch

unsetopt beep

bindkey -e

# To manage dot files with a bare git repo
# https://www.atlassian.com/git/tutorials/dotfiles
alias dots='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'

alias e="$VISUAL"
alias E="sudo -E $VISUAL"

alias .='source'

alias ls='ls --color=auto'
alias l='ls -a --color=auto'
alias la='ls -a --color=auto'
alias al='ls -a --color=auto'
alias ll='ls -a -l --color=auto'

alias ..='cd ..'

alias grep='grep -i --color=auto'
alias -g G='| grep -i --color=auto'

alias py='python3'
alias http='python3 -m http.server'

#--------------------------------------------------

zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit -d "$HOME/.cache/zsh.compdump" 
autoload -U colors && colors


source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh

