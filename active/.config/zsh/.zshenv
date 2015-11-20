#
# Defines environment variables.
#

# projects
export PROJECTS_DIR="$HOME/Documents/projects"

# auto `cd` paths
cdpath=(
  $HOME         # home directory
  $PROJECTS_DIR # projects directory
  $cdpath       # default
)

# programs and manual page search paths
# typeset -gU cdpath fpath mailpath path
typeset -U cdpath fpath mailpath path

# paths searched for programs
path=(
  /usr/local/{bin,sbin} # obviously :)
  /usr/libexec          # lots of non-obvious goodies in here (i.e. PlistBuddy)
  $HOME/.local/bin      # custom binaries & scripts
  $path                 # system default
)
