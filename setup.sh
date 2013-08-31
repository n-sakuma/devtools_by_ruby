$( which bundle >/dev/null )
if [ ! $? -eq 0 ]; then
  echo "Not found 'bundle' ->  gem i bundler "
  exit 1
fi

echo "bundle install..."
bundle install

echo "dotfiles copy... "
for dotfile in $( ls dotfiles/* ); do
  f=$(basename $dotfile)
  cp -b $dotfile ~/.$f
done

# sleep 1
echo "... Done"
