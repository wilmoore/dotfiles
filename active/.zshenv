#
# Defines environment variables.
#

################################################################################
# XDG Base Directory
# http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html
################################################################################

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

################################################################################
# Bootstrap ZSH Configuration
################################################################################

ZDOTDIR="$XDG_CONFIG_HOME/zsh"
source "$ZDOTDIR"/.zshenv
