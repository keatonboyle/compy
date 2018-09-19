# compy

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

## Adding new vim plugin

```bash
git submodule add https://github.com/<user_name>/<repo_name> dotfiles/vim/bundle/<repo_name>
```

# Removing a vim plugin
```bash
git rm dotfiles/vim/bundle/<repo>
```
