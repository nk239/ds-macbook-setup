# get Xcode Command Line Tools
xcode-select --install

# get Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install Cask
brew install cask
 
# Dev Tools
brew cask install sublime-text sourcetree slack pycharm-ce remote-desktop-manager keka macdown

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

# Fix PyEnv
pyenv rehash
mkdir ~/.pyenv/bin


# If you notice there are some weirds icons in the terminals and this is because by default some of the fonts are missing. In order to fix it : 
# Load the Fonts repository
brew tap caskroom/fonts
 
# Install Hack font
brew cask install font-hack

# And then just go to Iterm2 Preferences ( CMD+ , ) > Profiles > Text and ensure Use a different font for non-ASCII text  is ticked with 'Hack Regular' font 

# get python 
brew install pyenv




# And Get Anaconda from PyEnv
pyenv install anaconda3-4.3.1

pyenv install anaconda3-5.3.1

# SetUp anaconda as default version
pyenv global anaconda3-4.3.1

Now close the current terminal window and open a new one

# Get virtualenv through pip
pip install virtualenv 
 
# If you get: "-bash: pip: command not found" install pip first
sudo easy_install pip


Python 3 and virtual environment
https://wsvincent.com/install-python3-mac/

brew install python3

It’s a best practice to keep all your virtualenvs in one place, for example .virtualenvs/ in your home directory. Let’s create that directory:

mkdir ~/.virtualenvs
python3 -m venv ~/.virtualenvs/myvenv
source ~/.virtualenvs/myvenv/bin/activate

Now, from inside the environment install ipykernel using pip (to use Jupyter):

pip install ipykernel
ipython kernel install --user --name=projectname
