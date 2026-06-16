devcontainer-up() {
  devcontainer up \
    --dotfiles-repository https://github.com/hube/devcontainer-dotfiles
    "$@"
}

# Generate a personal access token in GitHub and add it here to enable automatic
# authentication with the gh CLI
export GH_TOKEN=
