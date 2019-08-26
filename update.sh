# keybindings
dconf load /org/gnome/settings-daemon/plugins/media-keys/ < $PWD/keybindings/keybindings_media.dconf
dconf load /org/gnome/desktop/wm/keybindings/ < $PWD/keybindings/keybindings.dconf

# zsh
ln -sf $PWD/.zshrc ~/.zshrc 

# nvim
ln -sf $PWD/.config/nvim/init.vim ~/.config/nvim/init.vim
ln -sf $PWD/.config/nvim/local_init.vim  ~/.config/nvim/local_init.vim 
ln -sf $PWD/.config/nvim/local_bundles.vim ~/.config/nvim/local_bundles.vim
mkdir -p ~/.config/nvim/autoload ~/.config/nvim/colors ~/.config/nvim/autoload/lightline/
ln -sf $PWD/.config/nvim/autoload/plug.vim  ~/.config/nvim/autoload/plug.vim
ln -sf $PWD/.config/nvim/autoload/lightline/colorscheme  ~/.config/nvim/autoload/lightline/colorscheme
ln -sf $PWD/.config/nvim/colors/shades_of_purple.vim ~/.config/nvim/colors/shades_of_purple.vim

# alacritty 
ln -sf $PWD/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

# rofi
mkdir -p ~/.config/rofi
ln -sf $PWD/.config/rofi/config.rasi ~/.config/rofi/config.rasi

# tmux
ln -sf $PWD/.tmux.conf ~/.tmux.conf
