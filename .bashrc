export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Go
export PATH=$PATH:$(go env GOPATH)/bin:$GOPATH

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

# brew install bash-completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nrahkola/google-cloud-sdk/path.bash.inc' ]; then . '/Users/nrahkola/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/nrahkola/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/nrahkola/google-cloud-sdk/completion.bash.inc'; fi

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.2
