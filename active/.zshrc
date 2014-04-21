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
[ $(command -v gh) ] && \
  eval "$(gh alias -s)"

#
# programming virtual environments & version managers
#

# nvm (Node.js)
[ $(command -v brew) ] && \
  source $(brew --prefix nvm)/nvm.sh && \
  nvm use 0.11 >/dev/null

# php-version (PHP)
[ -f ~/projects/active/php-version/php-version.sh ] && \
  source ~/projects/active/php-version/php-version.sh && \
  php-version 5

# ruby
[ $(command -v brew) ] && \
  source $(brew --prefix chruby)/share/chruby/chruby.sh && \
  chruby 2

