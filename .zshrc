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

### for rbenv
eval "$(rbenv init -)"

### for nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

autoload -U add-zsh-hook
load-nvmrc() {
  local nvmrc_path
  nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version
    nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}

add-zsh-hook chpwd load-nvmrc
load-nvmrc
