# dotfiles
dotfiles to be managed with GNU Stow

# Prequesites
## GNU Stow

The structure of the dotfiles follow the expected structure of [GNU Stow](https://www.gnu.org/software/stow/)

Install GNU Stow with:
```bash
apt install stow
```

The naming convention is `<package-name>/<target-path>/<file-name>`.

# Usage
Clone this repo (e.g. into `$HOME/dotfiles`). To create the symlinks, change into `~/dotfiles` and execute

```bash
stow <package> <package> ...
```

if the file is already existing and you want to overwrite it, you can first delite it and then stow it or directly use the `-R` option, which does exactly that:

```bash
stow -R <package> <package> ...
```

