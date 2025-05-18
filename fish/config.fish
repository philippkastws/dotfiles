if status is-interactive
    # Commands to run in interactive sessions can go here
end

# My git status alias
alias gis="git status"
alias gld="gitlogd"
alias gdd="gitdiffd"

# map eza commands to normal ls commands
alias lla="eza -l -a -g --icons"
alias ll="eza -l -g --icons"
alias l="eza --icons"

abbr -a gd --position command --set-cursor 'git diff % | delta --dark --syntax-theme=Coldark-Dark -n --paging always'
abbr -a gl --position command --set-cursor 'git log -p % | delta --dark --syntax-theme=Coldark-Dark -n --paging always'
abbr -a jira --position command --set-cursor 'open https://jira.autodesk.com/browse/%'

alias glgp='git log --stat -p'

alias bat='bat --paging=always'

# set nvim as editor
set -gx EDITOR nvim

set fish_cursor_insert block

# Install node on cd
#function __check_nvm --on-variable PWD --description 'Do nvm stuff'
#  if test -f .nvmrc
#    set node_version (nvm version)
#    set nvmrc_node_version (nvm version (cat .nvmrc))

#    if [ $nvmrc_node_version = "N/A" ]
#      nvm use
#      #nvm install
#    else if [ $nvmrc_node_version != $node_version ]
#      nvm use
#    end
#  end
#end

#function __check_nvm_startup
#  if test -f .nvmrc
#    set node_version (nvm version)
#    set nvmrc_node_version (nvm version (cat .nvmrc))

#    if [ $nvmrc_node_version = "N/A" ]
#      nvm use
#      #nvm install
#    else if [ $nvmrc_node_version != $node_version ]
#      nvm use
#    end
#  else if test -f ../.nvmrc
#    set node_version (nvm version)
#    set nvmrc_node_version (nvm version (cat ../.nvmrc))

#    if [ $nvmrc_node_version = "N/A" ]
#      nvm use
#      #nvm install
#    else if [ $nvmrc_node_version != $node_version ]
#      nvm use
#    end
#  end
#end

# nvm use

#__check_nvm_startup

# function __check_nvm --on-variable PWD --description 'Do nvm stuff'
#   if test -f .nvmrc
#     set node_version (node -v)
#     set nvmrc_node_version (nvm list | grep (cat .nvmrc))
# 
#     if set -q $nvmrc_node_version
#       nvm install
#     else if string match -q -- "*$node_version" $nvmrc_node_version
#       # already current node version
#     else
#       nvm use
#     end
#   end
# end

# To check current dir upon Fish session start
#function _nvm_find_up --argument-names path file
#    test -e "$path/$file" && echo $path/$file || begin
#        test ! -z "$path" || return
#        _nvm_find_up (string replace --regex -- '/[^/]*$' "" $path) $file
#    end
#end
#function __check_nvm_startup --description 'Do nvm stuff'
#  echo _nvm_find_up $PWD .nvmrc
#  set found_nvmrc = _nvm_find_up $PWD .nvmrc
#  echo $found_nvmrc
#  if test $found_nvmrc
#    nvm use
#  end
#end
#__check_nvm_startup


# Doesn't work, on start, messes with anyjump in nvim
#nvm use 2>/dev/null

#__check_nvm

# Configuration for: fisher install PatrickF1/fzf.fish
fzf_configure_bindings --directory=\ec --history=\ce

fzf --fish | source

# Use starship prompt
starship init fish | source


test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

if not set --query fish_private_mode
  history merge
end

