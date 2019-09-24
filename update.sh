# keybindings
dconf load /org/gnome/settings-daemon/plugins/media-keys/ < $PWD/keybindings/keybindings_media.dconf
dconf load /org/gnome/desktop/wm/keybindings/ < $PWD/keybindings/keybindings.dconf

# zsh
ln -sf $PWD/.zshrc ~/.zshrc 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# nvim
ln -sf $PWD/.config/nvim/init.vim ~/.config/nvim/init.vim
ln -sf $PWD/.config/nvim/local_init.vim  ~/.config/nvim/local_init.vim 
ln -sf $PWD/.config/nvim/local_mappings.vim  ~/.config/nvim/local_mappings.vim 
ln -sf $PWD/.config/nvim/local_bundles.vim ~/.config/nvim/local_bundles.vim
ln -sf $PWD/.config/nvim/autoload/plug.vim  ~/.config/nvim/autoload/plug.vim

# alacritty 
ln -sf $PWD/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

# tmux
ln -sf $PWD/.tmux.conf ~/.tmux.conf
