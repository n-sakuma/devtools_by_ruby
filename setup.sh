$( which bundle >/dev/null )
if [ ! $? -eq 0 ]; then
  echo "Not found 'bundle' ->  gem i bundler "
  exit 1
fi

echo "bundle install..."
bundle install

# echo "dotfiles copy... "
# for dotfile in $( ls dotfiles/* ); do
#   f=$(basename $dotfile)
#   cp -b $dotfile ~/.$f
# done

# homebrew

if [ $(uname) = 'Darwin' ]; then
  echo "brewdle install..."

  if [ ! -s $(which brew) ]; then
    "'brewdler' installing... "
    ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
  fi

  brewdle install
fi

# sleep 1
echo "... Done"

