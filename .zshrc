# Path to your oh-my-zsh installation.
export PATH="$PATH:~/.composer/vendor/bin"
export PATH=$PATH:~/.composer/vendor/bin
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/opt/mysql-client@5.7/bin:$PATH"
export ZSH="/Users/jamie/.oh-my-zsh"

ZSH_THEME="spaceship"
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_GIT_PREFIX=""
SPACESHIP_GIT_STATUS_SHOW=false
SPACESHIP_NODE_PREFIX=""
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_PHP_SHOW=false
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_ORDER=(
	dir
	node
	git
)

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh


#========================================
# General shortcuts
#========================================

alias c="clear"
alias e="exit"
alias gulp-mode="c && nvm use 10.23.0"
alias webpack-mode="c && nvm use 16.13.1"
alias snippets="cd ~/Library/Application\ Support/Code/User/snippets"


#========================================
# Craft CMS shortcuts
#========================================

alias craft-gc="php craft gc"
alias craft-ma="php craft migrate/all"
alias craft-pca="php craft project-config/apply"
alias craft-pcr="php craft project-config/rebuild"
alias craft-pct="php craft project-config/touch"
alias craft-ssk="php craft setup/security-key"


#========================================
# Enovate shortcuts
#========================================

alias build-reset="gulp-mode && git reset HEAD --hard && git checkout feature/craft3 && git pull && npm ci"
alias cli-update="npm uninstall -g enovate-cli && npm install -g 'https://gitlab.enovate.co.uk/api/v4/projects/309/repository/archive?private_token=EsH8szZhQFMjKK4FW4n1'"
alias egd="c && enovate getDatabase"
alias euc="c && enovate updateCraft"


#========================================
# Python
#========================================

alias python='python3'


#========================================
# Start Git shortcuts
# https://github.com/jamiewade/git-shortcuts
#========================================

# Miscellaneous
alias c='clear'
alias clean='c && git reset HEAD --hard && git pull && composer install && npm i && craft-ma && craft-pca'
alias clean-develop='c && git reset HEAD --hard && git checkout develop && git pull origin develop && composer install && npm i && craft-ma && craft-pca'
alias gaa='git add --all'
alias gd='git diff'
alias gfa='git fetch --all'
alias gs='git status'

# Remotes
alias gr='git remote'

# Branches
alias gbl='git branch --list'
alias gcom='git checkout master'
alias gcod='git checkout develop'

# Pushing
alias gph='git push'
alias gphom='git push origin master'
alias gphod='git push origin develop'
alias gpht='git push --tags'
alias push='git push origin develop && git checkout master && git pull origin master && git merge develop && git push origin master && git checkout develop && clear'

# Pulling
alias gpl='git pull'
alias gplom='git add --all && git stash && git pull origin master && git stash pop'
alias gplod='git add --all && git stash && git pull origin develop && git stash pop'

# Merging
alias gmm='git merge master'
alias gmd='git merge develop'

# Git Flow
alias gfi='git flow init'

alias gffs='git flow feature start'
alias gfff='git flow feature finish'
alias gffp='git flow feature publish'
alias gffplo='git flow feature pull origin'
alias gfft='git flow feature track'

alias gfrs='git flow release start'
alias gfrp='git flow release publish'
alias gfrt='git flow release track'
alias gfrf='git flow release finish'

alias gfhs='git flow hotfix start'
alias gfhf='git flow hotfix finish'

# Folder Navigation
alias c.1='cd ../'
alias c.2='cd ../../'
alias c.3='cd ../../../'
alias c.4='cd ../../../../'
alias c.5='cd ../../../../../'

#========================================
# End Git shortcuts
#========================================

# Always start from the Sites folder on start-up
cd ~/Code/Sites
