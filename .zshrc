export PGDATA=/usr/local/var/postgres
export ANDROID_TOOLS=$HOME/Library/Android/sdk/platform-tools
export NODEBREW=$HOME/.nodebrew/current/bin
export PKG_CONFIG_PATH=/usr/local/Cellar/imagemagick@6/6.9.9-20/lib/pkgconfig
export PATH=$HOME/bin:/usr/local/bin:$ANDROID_TOOLS:$NODEBREW:$PATH

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias rm=rmtrash

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
zstyle ':prezto:module:prompt' theme 'sorin'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
