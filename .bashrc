export PATH=~/.npm/bin:./node_modules/.bin:$PATH
export NODE_PATH=/usr/local/lib/node_modules:~/.npm/lib/node_modules
export PATH=/usr/local/bin:$PATH

# Testing scripts locally in different environments.
alias nodedca='NODE_ENV=dca NODE_CONFIG_DIR=./config-local node'
alias nodedus='NODE_ENV=dus NODE_CONFIG_DIR=./config-local node'
alias nodepca='NODE_ENV=pca NODE_CONFIG_DIR=./config-local node'
alias nodepus='NODE_ENV=pus NODE_CONFIG_DIR=./config-local node'
# Debug energy reports with html-inspector
alias nodebug='NODE_ENV=dus NODE_CONFIG_DIR=./config-local/ node-debug --no-preload '

# Always show Grunt stack traces.
alias grunt='grunt --stack'

# Git branch in prompt.
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] > "

# Git aliases
alias gs="git status --branch"
alias ga="git add -u; git status"
alias gap="git add -u; git status"
alias gp="git push"
alias gc="git commit -v"
alias gdc="git diff --cached"
alias gll="git log -p"  # Log with full diff patch
alias glol="git log --oneline"
alias gsp="git stash; git pull; git stash apply"

# Grunt aliases
alias grd="grunt dist"
alias grl="grunt lint"
alias grt="grunt test"
alias gtg="grunt test:unit --grep "

# Convenience
alias vimrc='vi $HOME/.vimrc'
alias bashrc='vi $HOME/.bash_profile'

# Silver Searcher aliases
agl () { ag --color --after=4 "$@" | less -SRi; }
ags () { ag --color --after=4 --smart-case "$@" | less -SRi; }
agq () { ag --color --before=2 --after=4 --literal --ignore=*.csv "$@" | less -SRi; }
agm () { ag --color --after=20 --literal "<<<<<<<" | less -SRi; } #Forgotten merge conflicts

export NVM_DIR="/Users/nigel.rahkola/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
