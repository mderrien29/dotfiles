sudo apt update
sudo apt install software-properties-common

# codecs & vlc
sudo apt install vlc ubuntu-restricted-extras libavcodec-extra libdvd-pkg

# qbittorent
sudo apt-get install qbittorrent

# Eddy
sudo apt install eddy

# alacritty
sudo apt install alacritty -y 

# oh my zsh
sudo apt install zsh -y 
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# neovim
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt install neovim -y

# rofi
sudo apt install rofi

# google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
sudo apt install -f # fix errors
rm google-chrome*.deb

# elementary tweaks
sudo add-apt-repository -y  ppa:philip.scott/elementary-tweaks
sudo apt-get update
sudo apt-get install elementary-tweaks

sudo apt autoremove

