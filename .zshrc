export ZSH="/home/martial/.oh-my-zsh"
ZSH_THEME="kolo"
COMPLETION_WAITING_DOTS="true"

plugins=(git zsh-autosuggestions zsh-vim-mode vi-mode )
source $ZSH/oh-my-zsh.sh

MODE_CURSOR_VICMD="green block"
MODE_CURSOR_VIINS="#20d08a blinking bar"
MODE_CURSOR_SEARCH="#ff00ff steady underline"
TMUX_PASSTHROUGH=1
# 10ms for key sequences
KEYTIMEOUT=1

export EDITOR=nvim

alias ll="ls -la" # 8/04
alias nrun="npm run" # 9/05
alias pop="xdg-open" # 11/07
alias mvg="mvg -g"
alias cpg="cpg -g"
alias clear="clear -x"

export TERM=xterm-256color

transfer() { if [ $# -eq 0 ]; then echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; }

alias meteo="weather"
weather() { if [ $# -eq 0 ]; then echo "No arguments specified. Usage: \nweather <city>"; return 1; fi
curl http://fr.wttr.in/$1; }

twitch() {
  streamlink twitch.tv/$1 $2 --player "mpv --cache 2048"
}

port() {
  sudo netstat -ltnp | grep :$1
}

scrollback() {
  scrollback_file=$(mktemp)
  tmux capture-pane -pS - > "$scrollback_file"
  vim -c 'call delete(@%)' "$scrollback_file"
}

timing() {
  ( cd ~/Documents/dotfiles/scripts; curl -w "\
   namelookup:  %{time_namelookup}s\n\
      connect:  %{time_connect}s\n\
   appconnect:  %{time_appconnect}s\n\
  pretransfer:  %{time_pretransfer}s\n\
     redirect:  %{time_redirect}s\n\
starttransfer:  %{time_starttransfer}s\n\
-------------------------\n\
        total:  %{time_total}s\n" -o /dev/null -s \
    --location --request POST $1 )
}

# AWS
# export PATH=/home/martial/.local/bin:$PATH
# source /home/martial/.local/bin/aws_zsh_completer.sh

#nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

