for file in $(ls dotfiles); do
  cp -b dotfiles/$file ~/.$file
done
