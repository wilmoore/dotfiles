#
# Executes commands at the start of an interactive session.
#

#
# prezto
#

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

#
# core
#

# aliases
source $HOME/.aliases

# keybindings
source $HOME/.bindkey

# widely accepted ulimit setting
ulimit -n 4096

#
# git
#

# gh alias
eval "$(gh alias -s)"

#
# programming virtual environments & version managers
#

# nvm (Node.js)
source $(brew --prefix nvm)/nvm.sh

# chruby (Ruby) and default to latest ruby 2.x
source $(brew --prefix chruby)/share/chruby/chruby.sh && chruby 2

# php-version (PHP)
source ~/projects/active/php-version/php-version.sh && php-version 5

#
# run once per system login
#

# do not run if we've already run it this login session.
[[ -f $(dirname `mktemp -d 2>/dev/null || mktemp -d -t '_'`)/runonce ]] && return

# note that we are in here.
echo 'run-once scripts are being sourced.'

# osx defaults.
source $HOME/.runscript/defaults

# note that we are done.
echo 'run-once scripts have completed.'

# guard from doing this more than once (should clean-up per system login).
date -u +'%Y%m%dT%H%M%SZ' > $(dirname `mktemp -d 2>/dev/null || mktemp -d -t '_'`)/runonce


