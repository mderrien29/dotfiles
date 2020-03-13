# zsh
ln -sf $PWD/.zshrc ~/.zshrc 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/softmoth/zsh-vim-mode ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vim-mode

ln -sf $PWD/.tmux.conf ~/.tmux.conf

ln -sf $PWD/.config/* ~/.config/


