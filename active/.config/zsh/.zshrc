#
# Executes commands at the start of an interactive session.
#

# [prezto](https://github.com/sorin-ionescu/prezto)
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# environment
source $XDG_CONFIG_HOME/env/init.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
