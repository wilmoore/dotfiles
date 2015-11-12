# functions
source $XDG_CONFIG_HOME/env/functions

# system software.
source $XDG_CONFIG_HOME/env/homebrew

# general envirionment.
source $XDG_CONFIG_HOME/env/aliases
source $XDG_CONFIG_HOME/env/bindkey
source $XDG_CONFIG_HOME/env/browser
source $XDG_CONFIG_HOME/env/completions
source $XDG_CONFIG_HOME/env/editor
source $XDG_CONFIG_HOME/env/locales
source $XDG_CONFIG_HOME/env/limits
source $XDG_CONFIG_HOME/env/manpages
source $XDG_CONFIG_HOME/env/osx
source $XDG_CONFIG_HOME/env/pager
source $XDG_CONFIG_HOME/env/scratch
source $XDG_CONFIG_HOME/env/ssh-agent
source $XDG_CONFIG_HOME/env/terminal

# programming languages
source $XDG_CONFIG_HOME/env/lang/android
source $XDG_CONFIG_HOME/env/lang/erlang
source $XDG_CONFIG_HOME/env/lang/go
source $XDG_CONFIG_HOME/env/lang/haskell
source $XDG_CONFIG_HOME/env/lang/node
source $XDG_CONFIG_HOME/env/lang/ruby
source $XDG_CONFIG_HOME/env/lang/rust
source $XDG_CONFIG_HOME/env/lang/titanium

# programs
source $XDG_CONFIG_HOME/env/programs/direnv
# NOTE: The aws completion significantly increases shell init time. It is commented out.
source $XDG_CONFIG_HOME/env/programs/aws
# NOTE: You'll need to source this within your project directory as this somehow breaks tmux
source $XDG_CONFIG_HOME/env/programs/docker-toolbox
source $XDG_CONFIG_HOME/env/programs/git
source $XDG_CONFIG_HOME/env/programs/node-install
source $XDG_CONFIG_HOME/env/programs/pkgconfig
source $XDG_CONFIG_HOME/env/programs/tmuxifier
