# Turn on Firewall
sudo defaults write /Library/Preferences/com.apple.alf globalstate -bool true

# Enable firewall activity logging
sudo defaults write /Library/Preferences/com.apple.alf loggingenabled -bool true

# Do not respond to ICMP ping requests
sudo defaults write /Library/Preferences/com.apple.alf stealthenabled -bool true

# Do not ask to send crash reports to Apple
defaults write com.apple.CrashReporter DialogType none

# Delay before starting to repeat keys
defaults write -g InitialKeyRepeat -int 15

# Delay between repeats
defaults write -g KeyRepeat -int 2

# Allow quitting Finder via ⌘+Q
defaults write com.apple.finder QuitMenuItem -bool true

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Don't create .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Don't create .DS_Store files on USB volumes
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Show all filename extensions in Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Enable full keyboard access for all controls (e.g. in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Disable inline attachments (just show the icons) in Apple Mail
defaults write com.apple.mail DisableInlineAttachmentViewing -bool true

# Prevent Safari from opening ‘safe’ files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Enable the Develop menu in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true

# Enable “Do Not Track” in Safari
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true
