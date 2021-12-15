export EDITOR=vim

alias buc='brew upgrade && brew cleanup'
alias gcm='git commit -m'

# Unset LESS
# https://github.com/ohmyzsh/ohmyzsh/pull/6611
unset LESS

unsetopt share_history

eval "$(pyenv init -)"
eval "$(rbenv init - zsh)"
