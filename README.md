# dotfiles
dotfiles to be managed with GNU Stow

# Note

Also checkout my [linux-forgeup repository](https://github.com/sascha-kirch/linux-forgeup), a Linux System Tool to automate setup and configuration of my debian based linux distros.


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

# Where to put what?

## .bashrc entriens
general extensions and configuration files within the ~/.bashrc.d directory contain things like aliases, functions, and other shell customizations.
If a tool like starship also needs some configuration, it is placed in `starship/.bashrc.d/starship.sh`.

## Functions vs. Scripts

When adding custom helpers, decide whether it should be a **shell function** or a **standalone script**:

- **Place it in `~/.bashrc.d/functions.sh` (function)** if:
  - It needs to change the *current shell state* (`cd`, `alias`, `export`, `umask`).
  - It wraps commands for convenience in interactive shells.
  - Example:
    ```bash
    up() {
        cd $(printf '../%.0s' $(seq 1 ${1:-1}))
    }
    ```

- **Place it in `~/.local/bin/` (script)** if:
  - It works independently of the shell environment.
  - It could be useful in cron jobs, other shells (`zsh`, `fish`), or scripts.
  - Example:
    ```bash
    #!/usr/bin/env bash
    extract() {
        case "$1" in
            *.zip)    unzip "$1" ;;
            *.tar.gz) tar -xvzf "$1" ;;
            *)        echo "Don't know how to extract '$1'" ;;
        esac
    }
    ```

👉 **Rule of thumb:**  
If it **must affect the shell you’re typing in**, make it a function.  
If it just **does work on its own**, make it a script in `~/.local/bin/`.
