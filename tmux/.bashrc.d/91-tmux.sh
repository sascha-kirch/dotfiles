# Start a tmux session if not already inside one
if [ -n "$PS1" ] && [ -z "$TMUX" ]; then

    # Check if inside VSCode terminal. The $TERM_PROGRAM variable is set to "vscode" in that case
    if [ "$TERM_PROGRAM" = "vscode" ]; then
        # If inside VSCode, create or attach to a tmux session named after the current folder. Which will be the workspace folder
        # opened in VSCode. This way each VSCode workspace can have its own tmux session.
        PROJ_DIR="$PWD"
        SESSEION_NAME="vscode-$(basename "$PROJ_DIR")"
        echo "You are inside VSCode."
        echo "Starting or attaching to tmux session '$SESSEION_NAME' for project directory '$PROJ_DIR'"
        tmux new-session -A -s "$SESSEION_NAME" -c "$PROJ_DIR"
    else
        # If not inside VSCode, do the following:
        # Run neofetch only when starting a new tmux session and redirect errors to /dev/null (e.g. not installed)
        # Otherwise, just run bash
        tmux new-session -A -s main "neofetch 2> /dev/null; bash"
    fi

fi
