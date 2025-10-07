# Package Manager
alias aptup='sudo apt update && sudo apt upgrade -y'


# ffmpeg
alias heic2png='find . -maxdepth 1 -type f -iname "*.heic" -print0 | xargs -0 -I{} sh -c '\''magick convert "$1" "${1%.*}.png"'\'' _ {}'


# Storage
alias duh='du -h --max-depth=1 . | sort -hr'

# ruff python linter & formatter
alias myruff='ruff format -q --force-exclude --exclude "*.ipynb" && ruff check --fix -q -e --output-format grouped && ruff check --statistics -q'
