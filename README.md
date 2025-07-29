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
Clone this repo (e.g. into `$HOME/dotfiles`). To create the symlinks, execute

```bash
stow <package> <package> ...
```

