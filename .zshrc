export PGDATA=/usr/local/var/postgres
export ANDROID_PLATFORM_TOOLS=$HOME/Library/Android/sdk/platform-tools
export ANDROID_TOOLS=$HOME/Library/Android/sdk/tools
export NODEBREW=$HOME/.nodebrew/current/bin
export PKG_CONFIG_PATH=/usr/local/Cellar/imagemagick@6/6.9.11-7/lib/pkgconfig
export PATH=$HOME/bin:/usr/local/bin:$ANDROID_PLATFORM_TOOLS:$ANDROID_TOOLS:$NODEBREW:$PATH
export PATH=$HOME/.yarn/bin:$PATH
export PATH=/usr/local/Cellar/openssl/1.0.2n/bin:$PATH
export PATH=/usr/local/Cellar/postgresql/10.0/bin:$PATH

alias rm=rmtrash

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### for nodebrew
export PATH="$HOME/.nodebrew/current/bin:$PATH"

### for phpenv & rbenv
export PHPENV_ROOT=$HOME/.phpenv
export PATH="$PATH:$PHPENV_ROOT/bin"
eval "$(rbenv init -)"
eval "$(phpenv init -)"

