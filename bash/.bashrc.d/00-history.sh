# Set the size of the history list in memory.
export HISTSIZE=10000

# Set the maximum number of lines in the history file.
export HISTFILESIZE=20000

# Ignore duplicate entries and commands that start with a space and erease duplicates.
export HISTCONTROL=ignoreboth:erasedups

# Ignore specific commands in the history.
export HISTIGNORE="ls:cd:pwd:exit:clear"

# Set the format for timestamps in the history file.
# %F is the date in YYYY-MM-DD format, %T is the time in HH
export HISTTIMEFORMAT="%F %T "

# Append to the history file, don't overwrite it.
# This allows the history to be shared between multiple terminal sessions.
shopt -s histappend

# save multi-line commands as a single line in the history file.
shopt -s cmdhist

# Enable history expansion with the '!' character. Show what will be executed.
shopt -s histverify
