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

#
# programs
#

# keeping this, but modified it a bit to not load the command completion...
# it takes us from loading in 0.07s to 0.10s (0.03s) -- without completion
# it loads in 0.08s in the worst case or 0.07s in the best case.
source $XDG_CONFIG_HOME/env/programs/aws
# commenting out for now since it takes us from loading in 0.13s to 0.43s (0.30s)
# source $XDG_CONFIG_HOME/env/programs/docker
source $XDG_CONFIG_HOME/env/programs/git
source $XDG_CONFIG_HOME/env/programs/pkgconfig
source $XDG_CONFIG_HOME/env/programs/tmux
