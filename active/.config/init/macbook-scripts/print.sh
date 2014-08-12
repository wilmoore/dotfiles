# expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true
