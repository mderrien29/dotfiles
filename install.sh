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

# tmux 
sudo apt install tmux -y

# neovim
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt install neovim -y

# firefox
sudo apt install firefox

# livestreamer & mpv
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt update
sudo apt install streamlink mpv

sudo apt autoremove

sudo ./i3/install.sh
