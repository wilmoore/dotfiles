#
# Defines environment variables.
#

# projects
export PROJECTS_DIR="$HOME/projects"

# auto `cd` paths
cdpath=(
  $HOME                 # home directory
  $PROJECTS_DIR         # active projects
  $PROJECTS_DIR/welltok # active projects (welltok)
  $PROJECTS_DIR/dfit    # active projects (dfit)
  $cdpath               # default
)

# programs and manual page search paths
typeset -gU cdpath fpath mailpath path

# paths searched for programs
path=(
  /usr/local/{bin,sbin} # obviously :)
  /usr/libexec          # lots of non-obvious goodies in here (i.e. PlistBuddy)
  $HOME/.local/bin      # custom binaries & scripts
  $path                 # system default
)
