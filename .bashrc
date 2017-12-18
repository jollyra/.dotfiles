export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.npm/bin:$PATH
export PATH=~/.npm/bin:./node_modules/.bin:$PATH
export PATH=~/Library/Python/3.6/bin:$PATH
export NODE_PATH=/usr/local/lib/node_modules:~/.npm/lib/node_modules
export PATH=/usr/local/sbin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export SFTP_HOST=localhost
export PYTHONPATH=$PYTHONPATH:$HOME/mydev/util/

# Git branch in prompt.
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] > "
export PS1="\u:\W\033[32m\]\$(parse_git_branch)\[\033[00m\] > "

# Git aliases
alias gs="git status --branch"
alias ga="git add -u; git status"
alias gad="git add"
alias gc="git commit -v"
alias gll="git log -p"  # Log with full diff patch
alias gsp="git stash; git pull; git stash apply"
alias gflogs="git log --follow --oneline --" # supply filename

# Convenience
alias vimrc='vi $HOME/.vimrc'
alias v="mvim"
alias bashrc='vi $HOME/.bash_profile'
alias ll='ls -al'
alias ..='cd ..'
alias ....='cd ../..'
alias octave="/usr/local/octave/3.8.0/bin/octave-3.8.0"

# Commit dotfiles changes from anywhere
alias dotfilesup="git -C $HOME/dotfiles/ commit -av; git -C $HOME/dotfiles/ push"

# Silver Searcher aliases
agl () { ag --color --after=4 "$@" | less -SRi; }
ags () { ag --color --after=4 --smart-case "$@" | less -SRi; }
agq () { ag --color --before=2 --after=4 --literal --ignore=*.csv "$@" | less -SRi; }
agm () { ag --color --after=20 --literal "<<<<<<<" | less -SRi; } #Forgotten merge conflicts

# Work
alias nbg='NODE_ENV=dbg NODE_CONFIG_DIR=./config-local node'
alias nca='NODE_ENV=dca NODE_CONFIG_DIR=./config-local node'
alias nus='NODE_ENV=dus NODE_CONFIG_DIR=./config-local node'

export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"

# Initialize rbenv
eval "$(rbenv init -)"

PATH="/usr/local/opt/gnupg/libexec/gpgbin:$PATH"

# brew install bash-completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
