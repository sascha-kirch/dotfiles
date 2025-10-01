# Need to unset these to avoid conflicts with eza themes
unset LS_COLORS
unset EZA_COLORS

alias ls='eza -lha --group-directories-first --icons=auto'
alias ll='eza -lha --group-directories-first --icons=auto'
alias lt='eza --tree -a --level=2 --long --icons --git'
