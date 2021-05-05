# 導入

```
$ cd ~
$ git clone git@github.com:betachelsea/dotfiles.git

$ mkdir ~/vimbackup
$ ln -s ~/dotfiles/.vimrc ~/.vimrc

$ ln -s ~/dotfiles/.gitconfig ~/.gitconfig
$ ln -s ~/dotfiles/.gitignore_global ~/.gitignore_global

# preztoの設定
$ zsh
$ git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
$ setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
$ ln -s ~/dotfiles/.zshrc ~/.zshrc
$ chsh -s /bin/zsh

$ curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
$ sh ./install.sh
```

