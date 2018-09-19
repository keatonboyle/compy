# Inspired by https://github.com/holman/dotfiles/blob/master/script/bootstrap

DOTFILE_ROOT="`pwd`/dotfiles"

for src in $(ls -F $DOTFILE_ROOT)
do
  # Remove trailing backslash so the target will not be treated as a directory
  target=`echo "$HOME/.$src" | sed s:/$::`

  echo "Creating link from $target to $DOTFILE_ROOT/$src"
  ln -svihF "$DOTFILE_ROOT/$src" $target || true
done
