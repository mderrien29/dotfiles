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

# rofi
sudo apt install rofi

# firefox
sudo apt install firefox

# livestreamer & mpv
sudo apt install livestreamer mpv

# i3
sudo apt install i3*

sudo apt autoremove

