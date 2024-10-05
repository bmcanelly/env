
# aliases
if [[ $(uname) == 'Darwin' ]] ; then
  alias vi=/opt/homebrew/bin/vim
  alias vim=/opt/homebrew/bin/vim
else
  alias awslogs=$HOME/.local/bin/awslogs
fi

alias _aws='docker run --rm -it -v ~/.aws:/root/.aws -e LC_ALL=en_US.utf8  -e AWS_PROFILE=$AWS_PROFILE amazon/aws-cli '

alias xbw='export AWS_PROFILE=bw'
alias xbel='export AWS_PROFILE=bel'
alias xhhs='export AWS_PROFILE=hhs'

alias devcg='fmns -f Procfile.dev'
alias devds='fmns -f Procfile.dev'
alias devui='fmns -f Procfile.dev'
alias RES='RAILS_ENV=staging'

alias fdec='function fdec() { openssl enc -pbkdf2 -aes256 -d -in ${1}.enc -out ${1} } ; fdec'
alias fenc='function fenc() { openssl enc -pbkdf2 -aes256 -salt -e -a -in ${1} -out ${1}.enc } ; fenc'

alias lsatr='ls -lAhFtr'

alias tf='tofu'

alias asdfplugup='asdf plugin update --all'



# exports
export RAILS_ENV=development
export NODE_ENV=$RAILS_ENV

export EDITOR=vim

export AWS_REGION=us-east-1
export AWS_PROFILE=bw
