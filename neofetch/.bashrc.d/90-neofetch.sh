# Execute neofetch only if not inside TMUX and if using an interactive shell (not if only running scripts or ssh commands)
if [ -z "$TMUX" ] && [ -n "$PS1" ]; then
    neofetch
fi
