
# aliases
if [[ $(uname) == 'Darwin' ]] ; then
  alias vi=/opt/homebrew/bin/vim
  alias vim=/opt/homebrew/bin/vim
fi

alias _aws='docker run --rm -it -v ~/.aws:/root/.aws -e LC_ALL=en_US.utf8  -e AWS_PROFILE=$AWS_PROFILE amazon/aws-cli '

alias xbw='export AWS_PROFILE=bw'
alias xbel='export AWS_PROFILE=bel'
alias xbwpng='export AWS_PROFILE=bwpng'
alias xbwsbx='export AWS_PROFILE=bwsbx'

alias devcg='rsp 3000'
alias devds='be guard'
alias devui='yin ; fmns -f Procfile.dev'
alias RES='RAILS_ENV=staging'

if [[ $(uname) != 'Darwin' ]] ; then
  alias awslogs=$HOME/.local/bin/awslogs
fi

alias lsatr='ls -lAhtr'



# exports
export RAILS_ENV=development
export NODE_ENV=$RAILS_ENV

export EDITOR=vim

export AWS_REGION=us-east-1
export AWS_PROFILE=bw
