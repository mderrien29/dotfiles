dconf load /org/gnome/settings-daemon/plugins/media-keys/ < ./keybindings/keybindings_media.dconf
dconf load /org/gnome/desktop/wm/keybindings/ < ./keybindings/keybindings.dconf

cp .zshrc ~
cp -r ./.config/* ~/.config/

