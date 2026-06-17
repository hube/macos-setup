export EDITOR=vim
export VISUAL=vim

alias buc='brew update && brew upgrade && brew cleanup'
alias gcm='git commit -m'

# Unset LESS
# https://github.com/ohmyzsh/ohmyzsh/pull/6611
unset LESS

# Don't share history between shells
unsetopt share_history
