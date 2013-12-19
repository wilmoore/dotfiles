#
# Executes commands at the start of an interactive session.
#

################################################################################
# prezto
################################################################################

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

################################################################################
# osx defaults
################################################################################

# this will only run once and only on OSX
[ $(echo "$OSTYPE" | grep -E '^darwin') ] && source "$HOME/.osx-defaults"

################################################################################
# core
################################################################################

# aliases
source $HOME/.aliases

# keybindings
source $HOME/.bindkey

# widely accepted ulimit setting
ulimit -n 4096

################################################################################
# programming virtual environments & version managers
################################################################################

# nvm (Node.js)
source $(brew --prefix nvm)/nvm.sh

# chruby (Ruby) and default to latest ruby 2.x
source $(brew --prefix chruby)/share/chruby/chruby.sh && chruby 2

# php-version (PHP)
# source $(brew --prefix php-version)/php-version.sh && php-version 5
source ~/projects/active/php-version/php-version.sh && php-version 5

