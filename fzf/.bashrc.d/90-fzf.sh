if command -v fzf &> /dev/null; then
    export FZF_DEFAULT_OPTS="--layout=reverse --exact --border=bold --border=rounded --margin=3% --color=dark"

    alias fzfm='fzf --multi'
    alias fzfp='fzf --preview "cat -n {}"'
    alias fzfmp='fzf --multi --preview "cat -n {}"'

    # Enables the following keybindings:
    # CTRL-t = fzf select
    # CTRL-r = fzf history
    # ALT-c  = fzf cd
    eval "$(fzf --bash)"
fi
