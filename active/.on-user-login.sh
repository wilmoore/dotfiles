#
# Executes commands on user login.
#

################################################################################
# virutalbox
################################################################################

command -v VBoxManage >/dev/null 2>&1 && \
  VBoxManage setproperty machinefolder ~/.virtualbox && rm -rf "$HOME/VirtualBox VMs"

