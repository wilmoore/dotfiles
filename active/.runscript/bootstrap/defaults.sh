#
# Defaults Write Commands (Mac OS X Customization)
#
# INSPIRATION:
#   - https://github.com/mathiasbynens/dotfiles/blob/master/.osx
#

# run only on OSX
[ $(echo "$OSTYPE" | grep -E '^darwin') ] || return

###############################################################################
# System
###############################################################################

# timezone; see `systemsetup -listtimezones` for other values

sudo systemsetup -settimezone "America/Denver" > /dev/null

###############################################################################
# Display
###############################################################################

# enable subpixel font rendering on non-apple LCDs
# http://www.wezm.net/technical/2010/08/howto-install-consolas-font-mac/

defaults write NSGlobalDomain AppleFontSmoothing -int 2

# enable HiDPI display modes (requires restart)

sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

###############################################################################
# Finder
###############################################################################

# show icons for hard drives, servers, and removable media on the desktop

defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# empty trash securely by default

defaults write com.apple.finder EmptyTrashSecurely -bool true

# finder: show all filename extensions

defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# disable the warning when changing a file extension

defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# when performing a search, search the current folder by default

defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# display full POSIX path as finder window title

defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# finder: show path bar

defaults write com.apple.finder ShowPathbar -bool true

# enable text selection in quick look windows

defaults write com.apple.finder QLEnableTextSelection -bool TRUE

# finder windows view style
# http://osxdaily.com/2012/07/04/change-finder-window-view-style-command-line

defaults write com.apple.Finder FXPreferredViewStyle clmv

# restart

killall "Finder" > /dev/null 2>&1

###############################################################################
# Dock
###############################################################################

# make hidden app icons translucent in the dock

defaults write com.apple.dock showhidden -bool true

# restart

killall "Dock" > /dev/null 2>&1

###############################################################################
# Safari & WebKit
###############################################################################

# prevent safari from opening ‘safe’ files automatically after downloading

defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# allow hitting the backspace key to go to the previous page in history

defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true

# hide safari’s bookmarks bar by default

defaults write com.apple.Safari ShowFavoritesBar -bool false

# disable safari’s thumbnail cache for history and top sites

defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

# enable safari’s debug menu

defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# remove icons from safari’s bookmarks bar

defaults write com.apple.Safari ProxiesInBookmarksBar "()"

# enable the develop menu and the web inspector in safari

defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# add a context menu item for showing the web inspector in web views

defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# restart

killall "Safari" > /dev/null 2>&1

###############################################################################
# General UI/UX
###############################################################################

# enable/disable app auto-termination
# http://osxdaily.com/2012/05/15/disable-automatic-termination-of-apps-in-mac-os-x/

defaults write -g NSDisableAutomaticTermination -bool yes

# show system info at the login screen

sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# screenshot save location

defaults write com.apple.screencapture location ~/Documents/screenshots

# disable checking spelling while typing

defaults write -g NSAllowContinuousSpellChecking -bool false

# disable auto-correct

defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# menu bar: show remaining battery time (on pre-10.8); hide percentage

defaults write com.apple.menuextra.battery ShowPercent -string "NO"
defaults write com.apple.menuextra.battery ShowTime -string "YES"

# menu bar: hide the time machine and volume icons

defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" "/System/Library/CoreServices/Menu Extras/AirPort.menu" "/System/Library/CoreServices/Menu Extras/Battery.menu" "/System/Library/CoreServices/Menu Extras/Clock.menu"

# expand save panel by default

defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# expand print panel by default

defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# automatically quit printer app once the print jobs complete

defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# disable the “Are you sure you want to open this application?” dialog

defaults write com.apple.LaunchServices LSQuarantine -bool false

# restart automatically if the computer freezes

sudo systemsetup -setrestartfreeze on

# disable notification center and remove the menu bar icon

sudo launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null

###############################################################################
# Trackpad, mouse, keyboard, Bluetooth accessories, and input
###############################################################################

# trackpad: enable tap to click for this user and for the login screen

defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)

defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# automatically illuminate built-in macBook keyboard in low light

defaults write com.apple.BezelServices kDim -bool true

# turn off keyboard illumination when computer is not used for 5 minutes

defaults write com.apple.BezelServices kDimTime -int 300

###############################################################################
# Mail
###############################################################################

# add the keyboard shortcut ⌘ + enter to send an email in Mail.app

defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" -string "@\\U21a9"

# disable inline attachments (just show the icons)

defaults write com.apple.mail DisableInlineAttachmentViewing -bool true

# restart

killall "Mail" > /dev/null 2>&1

###############################################################################
# Terminal
###############################################################################

# UTF-8 in Terminal.app

defaults write com.apple.terminal StringEncodings -array 4

# "focus follows mouse" for Terminal.app and all X11 apps
# i.e. hover over a window and start typing in it without clicking first

defaults write com.apple.terminal FocusFollowsMouse -string false
defaults write org.x.X11 wm_ffm -bool false
defaults write org.x.X11 wm_click_through -bool true

# Use a modified version of the Pro theme by default in Terminal.app
# open "${HOME}/init/Mathias.terminal"
# sleep 1 # Wait a bit to make sure the theme is loaded
# defaults write com.apple.terminal "Default Window Settings" -string "Mathias"
# defaults write com.apple.terminal "Startup Window Settings" -string "Mathias"

###############################################################################
# Time Machine
###############################################################################

# prevent time machine from prompting to use new hard drives as backup volume

defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# disable local time machine backups

hash tmutil &> /dev/null && sudo tmutil disablelocal

###############################################################################
# Google Chrome & Google Chrome Canary
###############################################################################

# allow installing user scripts via GitHub or Userscripts.org

defaults write com.google.Chrome ExtensionInstallSources -array "https://*.github.com/*" "http://userscripts.org/*"
defaults write com.google.Chrome.canary ExtensionInstallSources -array "https://*.github.com/*" "http://userscripts.org/*"

###############################################################################
# SizeUp.app
###############################################################################

# start at login

defaults write com.irradiatedsoftware.SizeUp StartAtLogin -bool true

# don’t show the preferences window on next start

defaults write com.irradiatedsoftware.SizeUp ShowPrefsOnNextStart -bool false

# restart

killall "SizeUp" > /dev/null 2>&1
open -a "Sizeup"

