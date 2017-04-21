# ensures that Photos does not auto-open for any device

defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool YES
