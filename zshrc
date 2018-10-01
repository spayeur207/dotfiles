
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="sunaku"

export UPDATE_ZSH_DAYS=13
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git,jsontools
)

source $ZSH/oh-my-zsh.sh

export SSH_KEY_PATH="~/.ssh/rsa_id"
export PATH="$HOME/dev/anaconda2/bin:$PATH"

alias resource="source ~/.zshrc"
alias ungron="gron --ungron"
alias hgrep="history | grep"
alias kube-get-all="kubectl get pod,deployments,svc,cm,ingress,rs,rc,pvc"

docker-prune(){
  arg=$1
  : ${arg:=none}
  echo "Pruning docker images with name: $arg"
  docker rmi $(docker images | grep "$arg" | awk '/ / { print $3 }')
}


