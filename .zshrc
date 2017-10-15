export ZSH=$HOME/.oh-my-zsh
export PGDATA=/usr/local/var/postgres
export ANDROID_TOOLS=$HOME/Library/Android/sdk/platform-tools
export NODEBREW=$HOME/.nodebrew/current/bin
export PATH=$HOME/bin:/usr/local/bin:$ANDROID_TOOLS:$NODEBREW:$PATH

ZSH_THEME="amuse"
plugins=(git ruby osx bundler brew rails)

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias rm=rmtrash

source $ZSH/oh-my-zsh.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
