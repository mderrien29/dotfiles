# zsh
ln -sf $PWD/.zshrc ~/.zshrc 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# nvim
mkdir ~/.config/nvim
ln -sf $PWD/.config/nvim/init.vim ~/.config/nvim/init.vim
ln -sf $PWD/.config/nvim/local_init.vim  ~/.config/nvim/local_init.vim 
ln -sf $PWD/.config/nvim/local_mappings.vim  ~/.config/nvim/local_mappings.vim 
ln -sf $PWD/.config/nvim/local_bundles.vim ~/.config/nvim/local_bundles.vim
mkdir ~/.config/nvim/autoload
ln -sf $PWD/.config/nvim/autoload/plug.vim  ~/.config/nvim/autoload/plug.vim

# alacritty 
ln -sf $PWD/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

# tmux
ln -sf $PWD/.tmux.conf ~/.tmux.conf

# i3
mkdir ~/.config/i3/
ln -sf $PWD/.config/i3/config ~/.config/i3/config

# compton
mkdir ~/.config/compton
ln -sf $PWD/.config/compton/compton.conf ~/.config/compton/compton.conf

# i3 status
mkdir ~/.config/i3status/
ln -sf $PWD/.config/i3status/config ~/.config/i3status/config

# rofi
mkdir ~/.config/rofi
ln -sf $PWD/.config/rofi/config ~/.config/rofi/config
