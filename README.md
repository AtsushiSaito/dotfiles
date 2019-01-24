# dotfiles

## vim-plug
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## time setting
```
sudo date -s "$(curl -s --head http://www.google.co.jp | grep '^Date' | cut -b 7-)"
```
