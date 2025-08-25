# Execute neofetch only if:
# - not inside TMUX and
# - if using an interactive shell (not if only running scripts or ssh commands)
# - if not inside VSCode
if [ -z "$TMUX" ] && [ -n "$PS1" ] && [ "$TERM_PROGRAM" != "vscode" ]; then
    neofetch
fi
