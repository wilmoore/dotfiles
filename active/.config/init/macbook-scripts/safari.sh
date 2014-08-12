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

