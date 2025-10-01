if command -v zoxide &> /dev/null; then

    #NOTE: Set environment variables before calling `zoxide init`!

    # setting _ZO_ECHO to 1 makes zi print the directory it switches to
    export _ZO_ECHO=1


    # --cmd cd replaces the cd command with zoxide's cd
    # further adds the zi command, which shows a fzf menu of your most used directories
    eval "$(zoxide init --cmd cd bash)"

fi
