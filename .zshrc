export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/.composer/vendor/bin:$HOME/.pyenv/bin:/usr/local/bin:$PATH"

export ZSH="$HOME/.oh-my-zsh"
eval "$(rbenv init - --path)"
eval "$(pyenv init - --path)"
# eval "$(pyenv virtualenv-init - --path)"
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"
export PULSAR_CONF_REPO="zpthree/pulsar-conf"

# * Plugins
plugins=(npm git vagrant command-not-found last-working-dir per-directory-history web-search gulp laravel5 copypath extract frontend-search lol)
ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_AUTOSUGGEST_STRATEGY=match_prev_cmd
DISABLE_UNTRACKED_FILES_DIRTY="true"
bindkey '`' autosuggest-accept
ZSH_THEME="cobalt2"
ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh
source $(dirname $(gem which colorls))/tab_complete.sh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# * Aliases
alias mykey="pbcopy < ~/.ssh/id_rsa.pub"
alias ssh="/usr/bin/ssh" # doing this because warp was being weird
alias staging="ssh $STAGING" # $STAGING is defined in .zprofile

function getport() { lsof -n -i4TCP:"${1}" }
function killport() { kill -9 "${1}" }

# General
alias ld="colorls --sort-dirs -lt" # sort by date
alias ls="colorls --sort-dirs"
alias gem-install="sudo gem install -n /usr/local/bin"
alias code="code-insiders" # since i'm using VS Code - Insiders

# Git
alias lg='lazygit' # lazygit
alias gs="git status"
function glog() {
  if [ "$1" != "" ]; then
    git --no-pager log --reverse --oneline --decorate -n $1 --color
  else
    git --no-pager log --reverse --oneline --decorate -n 10 --color
  fi
}
function gst() { la $(git status --porcelain | grep '^.[?M]' | sed 's/^.. //') }
alias gcm="git commit -m"
alias pull="git pull"
alias push="git push"
function gad() {
  if [ "$1" != "" ]; then
   git add $1
  else
    git add -A
  fi
}

function pb() {
  local branch=$(git rev-parse --abbrev-ref HEAD)
  git push --set-upstream origin $branch
}

function t() {
  local THEME_NAME=$(wp theme list --status=active --field=name)
  cd wp-content/themes/$THEME_NAME
}

function merge() {
  local branch=$(git rev-parse --abbrev-ref HEAD)

  if [ "$1" != "" ]; then
    git checkout $1 && git merge $branch
  else
    git checkout master && git merge $branch
  fi
}

function compress() {
  if [ "$1" != "-d" ]; then
    optimizt
  else
    optimizt ~/downloads/$2
  fi
}

# yarn
alias ys="yarn start"
alias yb="yarn build"
alias yd="yarn dev || yarn develop"
alias yw="yarn watch"

# Directories
alias sites="cd ~/develop/sites"
alias site="cd ~/develop/sites/ &&"
alias hosts="sudo micro /etc/hosts"
alias dotfiles="cd ~/dotfiles && code ~/dotfiles"

alias zource="source ~/.zshrc"

alias art="php artisan"
alias bs="browser-sync"

# * fun aliases
alias weather="curl wttr.in"

if [ -d "$HOME/develop/pulsar" ]; then
  source $HOME/develop/pulsar/deploy.sh
  source $HOME/develop/pulsar/connect.sh
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
