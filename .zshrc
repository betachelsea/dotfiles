export PGDATA=/usr/local/var/postgres
export ANDROID_PLATFORM_TOOLS=$HOME/Library/Android/sdk/platform-tools
export ANDROID_TOOLS=$HOME/Library/Android/sdk/tools
export NODEBREW=$HOME/.nodebrew/current/bin
export PKG_CONFIG_PATH=/usr/local/Cellar/imagemagick@6/6.9.9-20/lib/pkgconfig
export PATH=$HOME/bin:/usr/local/bin:$ANDROID_PLATFORM_TOOLS:$ANDROID_TOOLS:$NODEBREW:$PATH
export PATH=$HOME/.yarn/bin:$PATH

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias rm=rmtrash

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

setopt nonomatch

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
