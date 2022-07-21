
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=powerlevel10k/powerlevel10k

zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent lifetime 168h
zstyle :omz:plugins:ssh-agent lazy yes

DISABLE_UPDATE_PROMPT="true"

plugins=(
  aws
  bundler
  colorize
  colored-man-pages
  docker
  encode64
  git
  git-extras
  history
  jsontools
  kubectl
  node
  npm
  rails
  rake
  redis-cli
  rvm
  ruby
  screen
  ssh-agent
  terraform
  tmux
  urltools
  yarn
  z
)

export NVM_DIR="$HOME/.nvm"
if [[ $(uname) == 'Darwin' ]] ; then
  plugins+=('brew')
  NVM_SH=/opt/homebrew/opt/nvm/nvm.sh
else
  NVM_SH=$NVM_DIR/nvm.sh
fi
[ -s "$NVM_SH" ] && \. "$NVM_SH"

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.rvm/bin:$PATH:$HOME/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

unset LESS
#PAGER=

export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS

set -o vi

# Personal vars/secrets files
[[ -e ~/.vars.zsh ]] && . ~/.vars.zsh
[[ -e ~/.secrets.zsh ]] && . ~/.secrets.zsh
[[ -e ~/.bw.zsh ]] && . ~/.bw.zsh
