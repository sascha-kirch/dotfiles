
# Start a tmux session if not already inside one
if [ -n "$PS1" ] && [ -z "$TMUX" ]; then

    # Run neofetch only when starting a new tmux session and redirect errors to /dev/null (e.g. not installed)
    # Otherwise, just run bash
    tmux new-session -A -s main "neofetch 2> /dev/null; bash"
fi
