echo
echo "Installing common Kubernetes tooling"

brew install kubectl

cat <<EOT >> ~/.zshrc
#########
## K8s ##
#########

## Shell completion
source <(kubectl completion zsh)
complete -F __start_kubectl k
autoload -Uz compinit
compinit

## Aliases
alias k=kubectl
alias kn='kubectl config set-context --current --namespace ' # saves keystrokes when switching namespaces, e.g. `kn something`

export die='--grace-period=0 --force' # kill pods without mercy and grace, e.g. `k delete pod <podname> $die`
export do='—dry-run=client -o=yaml' # create resource yaml, e.g. `k create pod $do > mypod.yml`

EOT
