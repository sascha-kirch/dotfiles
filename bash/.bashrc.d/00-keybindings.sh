# Use vi keybindings in bash
set -o vi

# Clear screen with Ctrl+l in both command and insert modes
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

# Set cursor shape for command mode (block) and insert mode (beam)
bind -m vi-command 'set show-mode-in-prompt on'
bind -m vi-command 'set vi-cmd-mode-string "\1\e[2 q\2"'
bind -m vi-command 'set vi-ins-mode-string "\1\e[6 q\2"'
