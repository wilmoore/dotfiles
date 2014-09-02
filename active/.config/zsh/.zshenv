#
# Defines environment variables.
#

################################################################################
# shell options
################################################################################

# turn on word split
setopt sh_word_split

################################################################################
# performance
################################################################################

# http://blog.borntyping.co.uk/posts/zsh-startup-time.html
skip_global_compinit=1

################################################################################
# projects
################################################################################

export PROJECTS_DIR="$HOME/projects"

################################################################################
# auto `cd` paths
################################################################################

cdpath=(
  $HOME                                     # home directory
  $PROJECTS_DIR                             # active projects
  $PROJECTS_DIR/welltok                     # active projects (welltok)
  $PROJECTS_DIR/@archived/time-warner-cable # active project (time-warner-cable)
  $cdpath                                   # default
)

################################################################################
# programs and manual page search paths
################################################################################

typeset -gU cdpath fpath mailpath path

#
# paths searched for programs
#

path=(
# $GOPATH/bin                                           # purposefully commented out as $GOPATH is set further down in GO section.
  /usr/local/{bin,sbin}                                 # obviously :)
  /usr/libexec                                          # lots of non-obvious goodies in here (i.e. PlistBuddy)
  $HOME/.homebrew/{bin,sbin}                            # homebrew@$HOME
  $HOME/.local/bin                                      # custom binaries & scripts
  $HOME/.cabal/bin                                      # haskell binaries
  $XDG_CONFIG_HOME/tmux/sessions                        # tmux sessions
  /Applications/Postgres.app/Contents/Versions/9.3/bin  # postgres.app command line tools
  $path                                                 # system default
)

#
# paths searched for manual pages.
#

# user installed programs.
MANPATH=/usr/local/share/man:$MANPATH

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
export NPM_CONFIG_CACHE="~/.cache/npm"

# tell node programs that use the `update-notifier` package not to store anything.
export NO_UPDATE_NOTIFIER=1

# nvm will use the following directory for node versions.
export NVM_DIR=$XDG_DATA_HOME/node

#
# groovy
#

export GROOVY_HOME=$(brew --prefix)/opt/groovy/libexec

#
# go
#

# global go path.
export GO_GLOBALS_PATH=$XDG_DATA_HOME/go

# active go projects in development.
export GO_PROJECT_PATH=$PROJECTS_DIR/go

# ordered list of go source paths.
export GOPATH="$GO_GLOBALS_PATH:$GO_PROJECT_PATH"

# add global go binaries to the search path.
path=($GO_GLOBALS_PATH/bin $path)

# auto `cd` to my go projects.
cdpath=($GO_PROJECT_PATH/src/github.com/wilmoore $cdpath)

################################################################################
# homebrew
################################################################################

#
# brew cask options
#

# ensure homebrew cask links applications into `/Applications` (I like to see everything in one place)
# obviously you would not do this on a multi-user system as this could cause confusion.
export HOMEBREW_CASK_OPTS="--appdir=/Applications --binarydir=$HOME/.local/bin"

# where are your brew bundles?
export BUNDLE_DIR="$XDG_CONFIG_HOME/brew/bundles.d"

#
# man page search paths
#

# homebrew installed program man pages
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
export VISUAL='mvim -p'

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
# common functions
################################################################################

keychain-secret-for () {
  local domain="$(echo $1 | cut -d'/' -f3)"
  ((security find-internet-password -gs $domain -a $2 1>&3) 2>&1 | cut -d'"' -f2) 3>&1 | tail -1
}

################################################################################
# git
################################################################################

# USER SETUP
export GIT_COMMITTER_NAME="Wil Moore III"
export GIT_COMMITTER_EMAIL="wil.moore@wilmoore.com"
export GIT_AUTHOR_NAME="Wil Moore III"
export GIT_AUTHOR_EMAIL="wil.moore@wilmoore.com"

# github
export GITHUB_USER="wilmoore"
export GITHUB_OAUTH_TOKEN="$(keychain-secret-for api.github.com GITHUB_OAUTH_TOKEN)"
export GH_TOKEN=$GITHUB_OAUTH_TOKEN

# gh
export GH_CONFIG="$HOME/Documents/private/config/gh/config"

