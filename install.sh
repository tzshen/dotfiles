#!/usr/bin/env zsh

function install_linux() {
  sudo apt install -y build-essential curl fd-find fzf ripgrep samba ssh tmux trash-cli vim
}

function install_darwin() {
  brew install fd fzf git ripgrep tmux trash-cli vim wget
  brew cask install font-hack-nerd-font google-chrome iterm2 squirrel sublime-text virtualbox visual-studio-code vlc
}

function install_common() {
  local dotfiles

  dotfiles=(.gitconfig .vimrc .zshrc)

  if [ ! -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  fi

  if [ ! -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  fi

  cp ./tenzo.zsh-theme ~/.oh-my-zsh/custom/themes/
  for dotfile in $dotfiles; do
    cp ./$dotfile ~/
  done
  vim +PlugInstall +qall
  source ~/.zshrc
}

case "$OSTYPE" in
  linux*)
    install_linux
  ;;
  darwin*)
    install_darwin
  ;;
esac

install_common