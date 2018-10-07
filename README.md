# compy

# Homebrew

## Adding new programs installed via Homebrew
Edit Brewfile, adding:

```
brew '<program>'
```

or, for most GUI apps:

```
cask '<program>'
```

## Removing programs install via Homebrew
Remove the appropriate line from Brewfile and run:

```
brew uninstall <program>
# OR
brew cask uninstall <program>
```

# Vim Plugins

## Adding new vim plugin

```bash
git submodule add https://github.com/<user_name>/<repo_name> dotfiles/vim/bundle/<repo_name>
git submodule update --init --remote --recursive
```

## Removing a vim plugin
```bash
git submodule deinit -f dotfiles/vim/bundle/<repo_name>
rm -rf .git/modules/dotfiles/vim/bundle/<repo_name>
git rm -f dotfiles/vim/bundle/<repo_name>
```

## Plugin notes
* vim-colorschemes: due to some weirdness with the original
  flazz/vim-colorschemes repo, we are using the forked jsatk/vim-colorschemes
  repo
