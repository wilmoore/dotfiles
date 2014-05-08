#
# Defines environment variables.
#

################################################################################
# shell options
################################################################################

# turn on word split
setopt sh_word_split

################################################################################
# XDG Base Directory
# http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html
################################################################################

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

################################################################################
# auto `cd` paths
################################################################################

cdpath=(
  $HOME                 # ~/
  $HOME/projects/active # active projects
  $cdpath               # default
)

################################################################################
# program search path
################################################################################

typeset -gU cdpath fpath mailpath path

#
# paths searched for programs
#

path=(
  /usr/local/{bin,sbin}      # obviously :)
  /usr/libexec               # lots of non-obvious goodies in here (i.e. PlistBuddy)
  $HOME/.homebrew/{bin,sbin} # homebrew@$HOME
  $HOME/.local/bin           # custom binaries & scripts
  $HOME/.tmux                # tmux sessions
  $path                      # system defaults
)

################################################################################
# programming languages
################################################################################

#
# node/npm (because checking in ~/.npmrc is not safe)
#

export NPM_CONFIG_EMAIL="wil.moore@wilmoore.com"
export NPM_CONFIG_INIT_AUTHOR_NAME="Wil Moore III"
export NPM_CONFIG_INIT_AUTHOR_EMAIl="wil.moore@wilmoore.com"
export NPM_CONFIG_INIT_AUTHOR_URL="http://github.com/wilmoore"
export NPM_CONFIG_INIT_LICENSE="MIT"
export NPM_CONFIG_STRICT_SSL="false"

#
# groovy
#

export GROOVY_HOME=$(brew --prefix)/opt/groovy/libexec

#
# go
#

export GOPATH=$HOME/.go
path=($GOPATH/bin $path)

################################################################################
# homebrew
################################################################################

#
# brew cask options
#

# ensure homebrew cask links applications into `/Applications` (I like to see everything in one place)
# obviously you would not do this on a multi-user system as this could cause confusion.
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# where are your brew bundles?
export HOMEBREW_BUNDLES_D="~/.brews.d"

#
# man page search paths
#

# base
MANPATH=/usr/local/share/man:$MANPATH

# homebrew
MANPATH=$HOME/.homebrew/share/man:$MANPATH

# erlang is special
MANPATH=$(brew --prefix erlang)/lib/erlang/man:$MANPATH

################################################################################
# terminal
################################################################################

export TERM=xterm-256color

################################################################################
# web browser
################################################################################

if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

################################################################################
# editors & pagers
################################################################################

#
# default editor
#

export EDITOR='vim -p'
export VISUAL='vim -p'

#
# default pager
#

export PAGER="less"

#
# `less` configuration
# see: http://www.reddit.com/r/vim/comments/1l304v/use_vim_as_alternative_to_less/
#

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'

# Set the Less input preprocessor.
if (( $+commands[lesspipe.sh] )); then
  export LESSOPEN='| /usr/bin/env lesspipe.sh %s 2>&-'
fi

################################################################################
# language
################################################################################

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

################################################################################
# git
################################################################################

# USER SETUP
export GIT_COMMITTER_NAME="Wil Moore III"
export GIT_COMMITTER_EMAIL="wil.moore@wilmoore.com"
export GIT_AUTHOR_NAME="Wil Moore III"
export GIT_AUTHOR_EMAIL="wil.moore@wilmoore.com"

# github
export GITHUB_USER='wilmoore'
export GITHUB_OAUTH_TOKEN=$__PRIVATE_GITHUB_OAUTH_TOKEN

# gh
export GH_CONFIG=$XDG_CONFIG_HOME/gh/config.private

################################################################################
# application development variables
################################################################################

#
# HNav Client
# TODO: create an ignored "private" file that is sourced (so we can add more private info)
#

alias logclient='$(which logclient-32bit) -f ~/Library/Logs/hnavclient.log -l all $HNAVC_IP805_LAN_IPADDRESS'

