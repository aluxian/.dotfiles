# Turn on Firewall
defaults write /Library/Preferences/com.apple.alf globalstate -bool true

# Enable firewall activity logging
defaults write /Library/Preferences/com.apple.alf loggingenabled -bool true

# Do not respond to ICMP ping requests
defaults write /Library/Preferences/com.apple.alf stealthenabled -bool true

# Do not ask to send crash reports to Apple
defaults write com.apple.CrashReporter DialogType none
