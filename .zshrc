if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=powerlevel10k/powerlevel10k

zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent lifetime 4h
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
  npm
  python
  rails
  rake
  redis-cli
  ruby
  screen
  ssh-agent
  opentofu
  tmux
  urltools
  yarn
  z
  zsh-autosuggestions
  zsh-syntax-highlighting
)

if [[ $(uname) == 'Darwin' ]] ; then
  plugins+=('brew')
fi

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

unset LESS
#PAGER=

export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS

export PATH=$PATH:$HOME/.local/bin:$HOME/bin

set -o vi

# Personal vars/secrets files
[[ -e ~/.vars.zsh ]] && . ~/.vars.zsh
[[ -e ~/.secrets.zsh ]] && . ~/.secrets.zsh

if [[ $(uname) == 'Darwin' ]] ; then
  . /opt/homebrew/opt/asdf/libexec/asdf.sh
fi
. "$HOME/.asdf/asdf.sh"
. ~/.asdf/installs/rust/1.70.0/bin
. ~/.asdf/plugins/java/set-java-home.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
