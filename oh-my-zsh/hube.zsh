alias buc='brew upgrade && brew cleanup'

alias gcm='git commit -m'

export PATH="/usr/local/opt/postgresql@11/bin:$PATH"

# Unset LESS
# https://github.com/ohmyzsh/ohmyzsh/pull/6611
unset LESS

unsetopt share_history

eval "$(pyenv init -)"
eval "$(rbenv init -)"
