#
# Executes commands at the start of an interactive session.
#

#
# prezto
# https://github.com/sorin-ionescu/prezto
#

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

#
# core
#

# homebrew installed ZSH
unalias run-help
autoload run-help
HELPDIR=$HOME/.homebrew/share/zsh/helpfiles

# aliases
source $XDG_CONFIG_HOME/aliases

# keybindings
source $XDG_CONFIG_HOME/bindkey

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

# node default environment
export NODE_ENV=development

# nvm (Node.js)
[ -f ~/.homebrew/opt/nvm/nvm.sh ] && source $HOME/.homebrew/opt/nvm/nvm.sh && \
  nvm use 0.11 >/dev/null && \
  source <(npm completion)

# php-version (PHP)
[ -f ~/projects/active/php-version/php-version.sh ] && \
  source ~/projects/active/php-version/php-version.sh && \
  php-version 5

# ruby
[ -f ~/.homebrew/opt/chruby/share/chruby/chruby.sh ] && source ~/.homebrew/opt/chruby/share/chruby/chruby.sh
RUBIES=($XDG_DATA_HOME/rubies/*)
chruby 2

#
# status line
#

# init powerline if installed
if [[ -r ~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
  source ~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh
else
  echo "You do not seem to have powerline installed, please try the typing the following to correct this:"
  echo ""
  echo 'pip install --user git+git://github.com/Lokaltog/powerline'
fi

