# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing applications"

# Video Conferencing
brew install --cask zoomus
brew install --cask tuple

# Utilities

brew install --cask flycut
brew install --cask postman
brew install --cask flux

## TODO - ShiftIt or Spectacle? start the debate
#brew install --cask shiftit
#echo
#echo "configure shiftit to select 1/3 screen width, 1/2 screen width and 2/3 screen width:"
#echo "`defaults write org.shiftitapp.ShiftIt multipleActionsCycleWindowSizes YES`"
#echo

# Terminals

brew install --cask iterm2

# Browsers

brew install --cask google-chrome
brew install --cask firefox

# Text Editors

brew install --cask jetbrains-toolbox
set -e
