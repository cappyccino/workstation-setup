echo
echo "Configuring zsh by updating .zshrc"

echo "Setting zsh options"
cat <<EOT >> ~/.zshrc
#####################
## Set zsh Options ##
#####################

setopt NO_CASE_GLOB
setopt GLOB_COMPLETE
setopt AUTO_CD
setopt CORRECT
setopt CORRECT_ALL
setopt PROMPT_SUBST # Enable substitution in the prompt

EOT

echo "Configuring the terminal prompt"
cat <<EOT >> ~/.zshrc
###################
## Prompt config ##
###################

## Parse Git Branch
autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats "[ %b ]"
precmd() { vcs_info }

export PROMPT="%F{cyan}%2~ %F{magenta}${vcs_info_msg_0_} %F{green}%#%f "

EOT

echo "Adding custom aliases"
cat <<EOT >> ~/.zshrc
#############
## Aliases ##
#############

alias gst="git status"
alias please="sudo"
alias fucking="sudo"

export PROJECTS_ROOT="$HOME/workspace"
alias cdws="cd $PROJECTS_ROOT"

## Bash Profile
export BASH_PROF_SRC="~/.zshrc"
alias catbash="cat $BASH_PROF_SRC"
alias vibash="vi $BASH_PROF_SRC"
alias refresh="source $BASH_PROF_SRC"

## Ruby schtuff
alias be="bundle exec"

## Docker schtuff
alias dc="docker-compose"
alias docker-size="docker system df"

EOT
