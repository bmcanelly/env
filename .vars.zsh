

# aliases
alias mo='molecule'
if [[ $(uname) == 'Darwin' ]] ; then
  alias vi=/opt/homebrew/bin/vim
  alias vim=/opt/homebrew/bin/vim
fi

alias _aws='docker run --rm -it -v ~/.aws:/root/.aws -e LC_ALL=en_US.utf8  -e AWS_PROFILE=bw amazon/aws-cli '

alias xbw='export AWS_PROFILE=bw'
alias xbel='export AWS_PROFILE=bel'
alias xbwpng='export AWS_PROFILE=bwpng'
alias xbwsbx='export AWS_PROFILE=bwsbx'

alias devds='rails s -p 4000'
alias devui='yarn install ; rails s -p 3050'

alias awslogs=$HOME/.local/bin/awslogs

alias lsatr='ls -lAhtr'


# exports
export RAILS_ENV=development

export EDITOR=vim

export AWS_REGION=us-east-1
export AWS_PROFILE=bw

export AWS_SDK_LOAD_CONFIG=1

export PACKER_AMI_VIRTUALIZATION_TYPE=hvm

export DS_DBHOST_DEV=localhost
export UI_DBHOST_DEV=$DS_DBHOST_DEV

export API_USER=apimang

export ANSIBLE_VAULT_PASSWORD_FILE=$HOME/.vault_ansible_pass

export SLACK_EMOJI=:exclamation:
export MAX_MINUTES=20
export SLACK_CHANNEL=#auto_testing
export SLACK_USERNAME=testing987

export MOLECULE_INSTANCE_NAME=instance
export MOLECULE_INSTANCE_IMAGE_OWNER=$(aws sts get-caller-identity | jq -r '.Account')
export MOLECULE_INSTANCE_TYPE=t3.small
export MOLECULE_INSTANCE_TAG_NAME_VALUE=molecule-tst
