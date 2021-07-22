# zsh
ln -sf $PWD/.zshrc ~/.zshrc 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/jeffreytse/zsh-vi-mode ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vim-mode
git clone https://github.com/jeffreytse/zsh-vi-mode \
  $ZSH/custom/plugins/zsh-vi-mode

ln -sf $PWD/.motd ~/.motd

# other stuff
ln -sf $PWD/.tmux.conf ~/.tmux.conf
ln -sf $PWD/.config/* ~/.config/


