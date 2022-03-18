export ZSH="/home/theapemachine/.oh-my-zsh"
export LANG=en_US.UTF-8


ZSH_THEME="dracula"
HYPHEN_INSENSITIVE="true"
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=30
DISABLE_MAGIC_FUNCTIONS="true"

plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

alias vim='nvim'
alias zedit="vim ~/.zshrc && source ~/.zshrc"
alias vedit="vim ~/.config/nvim/init.vim"
alias sourcer="source ~/.zshrc"
alias shoot="git add . && git commit -m"
alias score="git push"
alias fix="git add . && git commit -m \"fixes\" && git push"
alias k9s="docker run --rm -it -v ~/.kube/config:/root/.kube/config quay.io/derailed/k9s"
alias errs="sudo journalctl -f"
alias nodes="kubectl get nodes"
alias po="kubectl get pods -A"
alias aa='kubectl get all -A'
alias sv='kubectl get svc -A'
alias dpl='kubectl get deployments -A'
alias ka="kubectl apply -f"
alias kd="kubectl delete -f"
alias errme="staticcheck ./..."
alias aws="docker run --rm -it -v ~/.aws:/root/.aws amazon/aws-cli"

alias pxedust="sudo systemctl start dnsmasq && sudo systemctl start matchbox"
alias killpxe="sudo systemctl stop dnsmasq && sudo systemctl stop matchbox"
alias pxestats="sudo systemctl status dnsmasq matchbox"

alias getkey="sudo cat ~/.ssh/id_rsa | sudo xclip -selection c"

alias errnie="cd ~/go/src/github.com/theapemachine/errnie/v2"
alias brazil="cd ~/go/src/github.com/theapemachine/brazil"
alias wrkspc="cd ~/go/src/github.com/theapemachine/wrkspc"

export GOPRIVATE="github.com/theapemachine/wrkspc"

eval "$(starship init zsh)"
source <(kubectl completion zsh)

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
/usr/bin/setxkbmap -option "ctrl:nocaps"
