#
# Defines environment variables.
#

################################################################################
# program search path
################################################################################

typeset -gU cdpath fpath mailpath path

#
# paths searched for programs
#

path=(
  /usr/local/{bin,sbin}      # obviously :)
  $HOME/.homebrew/{bin,sbin} # homebrew@$HOME
  $HOME/.local/bin           # custom binaries & scripts
  $path                      # system defaults
)

################################################################################
# shell options
################################################################################

# turn on word split
setopt sh_word_split

################################################################################
# homebrew
################################################################################

#
# brew cask options
#

# ensure homebrew cask links applications into `/Applications` (I like to see everything in one place)
# obviously you would not do this on a multi-user system as this could cause confusion.
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

#
# man page search paths
#

# base
MANPATH=$HOME/.homebrew/share/man:$MANPATH

# erlang is special
MANPATH=$(brew --prefix erlang)/lib/erlang/man:$MANPATH

################################################################################
# auto `cd` paths
################################################################################

cdpath=(
  $HOME                 # ~/
  $HOME/projects/active # active projects
  $cdpath               # default
)

################################################################################
# programming languages
################################################################################

#
# groovy
#

export GROOVY_HOME=$(brew --prefix)/opt/groovy/libexec

#
# go
#

export GOPATH=$HOME/.go

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

export PAGER='vimpager'

#
# `less` configuration
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
# temporary Files
################################################################################

if [[ ! -d "$TMPDIR" ]]; then
  export TMPDIR="/tmp/$USER"
  mkdir -p -m 700 "$TMPDIR"
fi

TMPPREFIX="${TMPDIR%/}/zsh"
if [[ ! -d "$TMPPREFIX" ]]; then
  mkdir -p "$TMPPREFIX"
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

################################################################################
# application development variables
################################################################################

#
# HNav Client
# TODO: create an ignored "private" file that is sourced (so we can add more private info)
#

# when set,  grunt/make tasks that open a web browser, will use this instead of system default browser
export HNAVC_DEFAULT_WEB_BROWSER='Google Chrome'

# if this is set, always use; otherwise, look up port using nmap (i.e. some people have a standing apache server for whatever reason; some people use the portable NodeJS server -- these tend to have different base paths)
export HNAVC_DEVELOPER_SERVERURL='http://192.168.0.36:8800'

# required by scripts that need to lookup STB IP address
export HNAVC_IP805STB_MACADDRESS='B0:77:AC:2F:9F:62'

# IP805 IP address
export HNAVC_IP805_LAN_IPADDRESS='192.168.0.37'

# required by scripts that need to connect to hydra remotely (bin/client will open desktop
# `bin/client --local`          (default)
# `bin/client --remote`         (adds `rewriteIp`)
# `bin/client --only-desktop`   (only open client on desktop)
# `bin/client --only-stb`       (only open client on STB)
export HNAVC_HYDRA_WAN_IPADDRESS='10.243.41.245'

# set this when you want scripts that generate client urls to append something to the query string
# export HNAVC_DEFAULT_QUERYSTRING='feature.startOverDelay=false'

alias logclient='$(which logclient-32bit) -f ~/Library/Logs/hnavclient.log -l all $HNAVC_IP805_LAN_IPADDRESS'

