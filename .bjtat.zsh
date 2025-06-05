# everything below is my own
setopt histignorealldups sharehistory
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history

# neovim > vim
export EDITOR='nvim'
alias e=$EDITOR
alias b="NVIM_APPNAME=bjtat-nvim nvim"

# spinning up starship, zoxide, and fzf on shell start
eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"
source <(fzf --zsh)

alias lg="lazygit"
alias yz="yazi"
