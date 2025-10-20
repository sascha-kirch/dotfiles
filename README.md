# dotfiles

[![Stow-ready](https://img.shields.io/badge/managed%20with-GNU%20Stow-orange.svg)](https://www.gnu.org/software/stow/)

A polished collection of personal dotfiles and small utilities to bootstrap and sync my dev environments. Designed to be [stow](https://github.com/sascha-kirch/linux-forgeup)-friendly and easy to reuse.

## Quick start

1. Clone this repo into your home directory: `git clone https://github.com/sascha-kirch/dotfiles.git ~/dotfiles`
2. Change into the repo and use GNU Stow to symlink packages into $HOME, e.g.: `stow bash nvim tmux starship`
3. If you want to force replace existing files: `stow -R zoxide eza dust`
4. Prepare your `~/.bashrc` and `~/.profile` (or `~/.bash_profile`) files to load the extensions in `~/.bashrc.d/` and `~/.profile.d/` respectively. Example entries are provided in section [Preparing your shell to load extensions](#preparing-your-shell-to-load-extensions).

> Note: Also checkout my [linux-forgeup](https://github.com/sascha-kirch/linux-forgeup) repository, a Linux System Tool to automate setup and configuration of my debian based linux distros.

## Included Packages/Tools

Following packages/tools are included in this dotfiles collection:

> If you are working on machines without sudo privileges and can't use a package manager to install those, checkout my
> my [linux-forgeup](https://github.com/sascha-kirch/linux-forgeup) repo where I provide many installation helpers to install them locally from GitHub releases

| package | description (taken from their repos) | Config location |
|---------|-------------|-----------------|
| [dust](https://github.com/bootandy/dust) | A more intuitive version of `du` in rust | [dust](dust) |
| [eza](https://github.com/eza-community/eza) | A modern alternative to ls  |[eza](eza)|
| [fzf](https://github.com/junegunn/fzf) | A command-line fuzzy finder |[fzf](fzf)|
| [neofetch](https://github.com/dylanaraps/neofetch) | displays information about your operating system, software and hardware in an aesthetic and visually pleasing way. |[neofetch](neofetch)|
| [neovim](https://github.com/neovim/neovim) | Vim-fork focused on extensibility and usability  |[neovim](neovim)|
| [starship](https://github.com/starship/starship) | minimal, blazing-fast, and infinitely customizable prompt for any shell! |[starship](starship)|
| [tmux](https://github.com/tmux/tmux) | tmux is a terminal multiplexer: it enables a number of terminals to be created, accessed, and controlled from a single screen.|[tmux](tmux)|
| [vim](https://github.com/vim/vim) | Text editor no one can exit |[vim](vim)|
| [zoxide](https://github.com/ajeetdsouza/zoxide) | zoxide is a smarter cd command, inspired by z and autojump. It remembers which directories you use most frequently, so you can "jump" to them in just a few keystrokes. zoxide works on all major shells. |[zoxide](zoxide)|

> Apart from these, additional bash extensions, aliases, env variables and functions are provided in the [bash](bash) and [profile](profile) packages.

## Why this layout?

- Each top-level directory is a stow package (e.g. [tmux](tmux), [nvim](nvim), [bash](bash)).
- Files inside each package are laid out using the destination structure expected by stow, for example [nvim/.config/nvim/init.lua](nvim/.config/nvim/init.lua) will be symlinked to `~/.config/nvim/init.lua`.
- This keeps your home directory clean and easy to manage

## Prequesites

### GNU Stow

The structure of the dotfiles follow the expected structure of [GNU Stow](https://www.gnu.org/software/stow/)

Install GNU Stow with:

```bash
apt install stow
```

The naming convention is `<package-name>/<target-path>/<file-name>`.

### Preparing your shell to load extensions

To enable the modular configuration system, you need to source the files in `~/.bashrc.d/` and `~/.profile.d/` from your main `~/.bashrc` and `~/.profile` (or `~/.bash_profile`) files respectively.

#### .bashrc

Inside `~/.bashrc`, add the following lines to source additional configs:

```bash
# Source additional configs
if [ -d ~/.bashrc.d ]; then
    for file in ~/.bashrc.d/*.sh; do
        if [ -f "$file" ]; then
        source "$file"
        fi
    done
fi
```

#### .profile or .bash_profile

Inside `~/.profile` (or `~/.bash_profile`) add the following lines to source additional configs:

```bash
# Source additional configs
if [ -d ~/.profile.d ]; then
    for file in ~/.profile.d/*.sh; do
        if [ -f "$file" ]; then
        source "$file"
        fi
    done
fi
```

> should be added before the line that sources ~/.bashrc, so that the PATH is set correctly before bash is started.

## Where to put what?

### .bashrc entries

general extensions and configuration files within the ~/.bashrc.d directory contain things like aliases, functions, and other shell customizations.
If a tool like starship also needs some configuration, it is placed in `starship/.bashrc.d/starship.sh`.

### Functions vs. Scripts

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
