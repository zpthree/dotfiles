if [ ! -d "$HOME/dotfiles" ]; then
  echo "Please make sure /dotfiles is in the home directory and try again."
  exit 1
fi

# ~/.hyper.js
if [ -f "$HOME/.hyper.js" ]; then
  rm $HOME/.hyper.js
fi
ln -s $HOME/dotfiles/.hyper.js $HOME/.hyper.js

# ~/hammerspoon/init.lua
if [ -d "$HOME/.hammerspoon" ]; then
  if [ -f "$HOME/.hammerspoon/init.lua" ]; then
    rm $HOME/.hammerspoon/init.lua
  fi
  ln -s $HOME/dotfiles/init.lua $HOME/.hammerspoon/init.lua
fi

# ~/.zshrc
if [ -f "$HOME/.zshrc" ]; then
  rm $HOME/.zshrc
fi
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc

# ~/.oh-my-zsh/themes/cobalt2.zsh-theme
if [ -d "$HOME/.oh-my-zsh/themes" ]; then
  if [ -f "$HOME/.oh-my-zsh/themes/cobalt2.zsh-theme" ]; then
    rm $HOME/.oh-my-zsh/themes/cobalt2.zsh-theme
  fi
  curl -o $HOME/.oh-my-zsh/themes/cobalt2.zsh-theme https://raw.githubusercontent.com/wesbos/Cobalt2-iterm/master/cobalt2.zsh-theme
fi

# ~/.gitconfig
if [ -f "$HOME/.gitconfig" ]; then
  rm $HOME/.gitconfig
fi
cp $HOME/dotfiles/.gitconfig $HOME/.gitconfig

# ~/.gitconfig
if [ -f "$HOME/.gitignore" ]; then
  rm $HOME/.gitignore
fi
ln -s $HOME/dotfiles/.gitignore $HOME/.gitignore