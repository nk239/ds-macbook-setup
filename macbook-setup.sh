#!/usr/bin/env sh

# get Xcode Command Line Tools
xcode-select --install

# get Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install Cask
brew install cask
 
# Dev Tools
brew cask install sublime-text sourcetree slack pycharm-ce remote-desktop-manager keka macdown jupyter-notebook-viewer docker

# replacing the terminal
brew cask install iterm2

# install Fish
brew install fish

# Add it to default shells
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells

# Load the shell
chsh -s /usr/local/bin/fish
 
# Install OhMyFish, a plugin manager ( omf install PluginName )
curl -L https://get.oh-my.fish | fish

# Get a bunch of useful plugins
omf install sublime osx bobthefish pyenv

# If you notice there are some weirds icons in the terminals and this is because by default some of the fonts are missing. In order to fix it : 
# Load the Fonts repository
brew tap caskroom/fonts
 
# Install Hack font
brew cask install font-hack

# And then just go to Iterm2 Preferences ( CMD+ , ) > Profiles > Text and ensure Use a different font for non-ASCII text  is ticked with 'Hack Regular' font 

# get python 
brew install pyenv

# And Get Anaconda from PyEnv
pyenv install anaconda3-2019.03

# SetUp anaconda as default version
pyenv global anaconda3-2019.03

# Now close the current terminal window and open a new one

# Install pip first (if you get: "-bash: pip: command not found")
sudo easy_install pip

# Get virtualenv through pip
pip install virtualenv 
 
# Python 3 - https://wsvincent.com/install-python3-mac/
brew install python3