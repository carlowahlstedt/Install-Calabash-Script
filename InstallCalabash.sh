# made to install calabash for iOS
# tested on:
#  - OSX Mavericks
#---------------------------------------

# create the calabash directory
mkdir –p ~/.calabash

# install calabash for iOS
GEM_HOME=~/.calabash GEM_PATH=~/.calabash gem install calabash-cucumber

# set your environment variables
export GEM_HOME=~/.calabash
export GEM_PATH=~/.calabash
export PATH="$PATH:$HOME/.calabash/bin"

#create .bash_profile
touch ~/.bash_profile

#open add
echo "export GEM_HOME=~/.calabash" >> ~/.bash_profile
echo "export GEM_PATH=~/.calabash" >> ~/.bash_profile
echo "export PATH=\"$PATH:$HOME/.calabash/bin\"" >> ~/.bash_profile

#reload environment variable
source ~/.bash_profile

#verify that it installed properly
calabash-ios
