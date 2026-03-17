if [ -d "$HOME/.bin" ] ;then
    PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "/usr/local/cuda/bin" ] ;then
    PATH="/usr/local/cuda/bin:$PATH"
fi
