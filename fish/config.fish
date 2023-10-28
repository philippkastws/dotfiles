if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

# map exa commands to normal ls commands
alias lla="exa -l -a -g --icons"
alias ll="exa -l -g --icons"
alias l="exa --icons"

alias gis="git status"
alias gdd="gitdiffd"
alias gld="gitlogd"

function __check_nvm --on-variable PWD --description 'Do nvm stuff'
  if test -f .nvmrc
    set node_version (node -v)
    set nvmrc_node_version (nvm list | grep (cat .nvmrc))

    if set -q $nvmrc_node_version
      nvm install
    else if string match -q -- "*$node_version" $nvmrc_node_version
      # already current node version
    else
      nvm use
    end
  end
end

#__check_nvm
#nvm install 2>/dev/null

# Configuration for: fisher install PatrickF1/fzf.fish
fzf_configure_bindings --directory=\cf --history=\ce

# source ~/.iterm2_shell_integration.fish
