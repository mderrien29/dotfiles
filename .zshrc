export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="sunrise"
COMPLETION_WAITING_DOTS="true"

plugins=(git zsh-autosuggestions zsh-vi-mode )
source $ZSH/oh-my-zsh.sh

export TMPDIR="/tmp"
export TMUX_PASSTHROUGH=1
# 1ms for key sequences
export KEYTIMEOUT=1

export EDITOR=nvim

alias ll="ls -la" # 8/04
alias nrun="npm run" # 9/05
alias mvg="mvg -g"
alias cpg="cpg -g"
alias clear="clear -x" # potential security issue but w/e
alias :q=exit
alias adog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias vi=nvim
alias ggfl="git --force-with-lease"
alias cleanup_rebase='find . -regextype sed -regex ".*_\(\(BASE\)\|\(BACKUP\)\|\(LOCAL\)\|\(REMOTE\)\)_.*" -delete'
alias indb="~/Documents/liveencheres/indb-docker/indb-dc"
alias squash="~/Documents/dotfiles/scripts/squash.sh"
alias todo="nvim ~/Documents/todo.md"

# transfer.sh
transfer() { if [ $# -eq 0 ]; then echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; }

# fr.wttr.in
alias meteo="weather"
weather() { if [ $# -eq 0 ]; then echo "No arguments specified. Usage: \nweather <city>"; return 1; fi
curl http://fr.wttr.in/$1; }

# who can remember how to check what uses port X
port() {
  sudo netstat -ltnp | grep :$1
}

# open scrollback buffer in vim
scrollback() {
  scrollback_file=$(mktemp)
  tmux capture-pane -pS - > "$scrollback_file"
  nvim -c 'call delete(@%)' "$scrollback_file"
}

# check website timing
timing() {
  curl -w "\
   namelookup:  %{time_namelookup}s\n\
      connect:  %{time_connect}s\n\
   appconnect:  %{time_appconnect}s\n\
  pretransfer:  %{time_pretransfer}s\n\
     redirect:  %{time_redirect}s\n\
starttransfer:  %{time_starttransfer}s\n\
-------------------------\n\
        total:  %{time_total}s\n" -o /dev/null -s \
    --location --request POST $1 
}

dict() {
  curl dict://dict.org/d:$1
}

help() {
  curl cheat.sh/$1
}

rebase_after_squash () { git rebase --onto master $(git merge-base "$1" "$2") "$1"; }

if test -f $HOME/.local/bin/aws; then
  export PATH=/home/martial/.local/bin:$PATH
  source /home/martial/.local/bin/aws_zsh_completer.sh
fi

#nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if test -f $HOME/.motd; then
  $HOME/.motd
fi

if test -f .todo; then
  cat .todo
  echo ""
fi

SSH_ENV="$HOME/.ssh/agent-environment"

function start_agent {
    echo "Initialising new SSH agent..."
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add;
}

# Source SSH settings, if applicable

if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null
    #ps ${SSH_AGENT_PID} doesn't work under cywgin
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi
