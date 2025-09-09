if [ -d "$HOME/.bin" ] ;then
    PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.local/nvim-linux-x86_64/bin" ] ;then
    PATH="$HOME/.local/nvim-linux-x86_64/bin:$PATH"
fi
