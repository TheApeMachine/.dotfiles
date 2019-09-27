echo "Enable full keyboard access for all controls (e.g. tab in modals)"
defaults write NSGGlobalDomain AppleKeyboardUIMode -int 3

echo "Enable subpixel font rendering on non-Apple LCDs"
defaults write NSGlobalDomain AppleFontSmoothing -int 2
