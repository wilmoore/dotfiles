#
# Use a modified version of the Solarized Dark theme by default in Terminal.app
# props: https://github.com/mathiasbynens/dotfiles/blob/master/.osx
#

TERM_PROFILE='Solarized Dark xterm-256color'
CURRENT_PROFILE="$(defaults read com.apple.terminal 'Default Window Settings')"

if [ "${CURRENT_PROFILE}" != "${TERM_PROFILE}" ]; then
  open "${HOME}/.config/terminal/${TERM_PROFILE}.terminal"
  sleep 1; # Wait a bit to make sure the theme is loaded
  defaults write com.apple.terminal 'Default Window Settings' -string "${TERM_PROFILE}"
  defaults write com.apple.terminal 'Startup Window Settings' -string "${TERM_PROFILE}"
fi

