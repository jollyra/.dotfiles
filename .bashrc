export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Go
export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$HOME/league/services

# Git aliases
alias gs="git status --branch"
alias ga="git add -u; git status"
alias gad="git add"
alias gc="git commit -v"
alias gll="git log -p"  # Log with full diff patch
alias gsp="git stash; git pull; git stash apply"
alias gflogs="git log --follow --oneline --" # supply filename

# Convenience
alias ll='ls -al'
alias ..='cd ..'
alias ....='cd ../..'

# Kubernetes
alias k="kubectl"
alias clusterstaging='gcloud container clusters get-credentials league-cluster --region northamerica-northeast1 --project league-stage-ca'
alias clusterprod='gcloud container clusters get-credentials league-cluster --region northamerica-northeast1 --project league-prod-ca'
alias projectprod='gcloud config set project league-prod-ca'
alias projectstaging='gcloud config set project league-stage-ca '

# brew install bash-completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(direnv hook bash)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nrahkola/google-cloud-sdk/path.bash.inc' ]; then . '/Users/nrahkola/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/nrahkola/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/nrahkola/google-cloud-sdk/completion.bash.inc'; fi
