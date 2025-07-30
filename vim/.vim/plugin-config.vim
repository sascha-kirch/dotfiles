"-- AIRLINE CONFIG
let g:airline_powerline_fonts=1


"-- INDENTLINE CONFIG
let g:indentLine_color_gui = '#423d38'
let g:indentLine_setConceal = 0
let g:indentLine_char = '|'

" Gruvbox setting. check configs here:
" https://github.com/morhetz/gruvbox/wiki/Configuration
" set termguicolors
let g:gruvbox_italic=1
let g:gruvbox_transparent_bg=1
let g:gruvbox_improved_strings=0
let g:gruvbox_improved_warnings=1
colorscheme gruvbox
set background=dark
hi Normal guibg=NONE ctermbg=NONE
let g:terminal_ansi_colors = [
  \ '#282828', '#cc241d', '#98971a', '#d79921',
  \ '#458588', '#b16286', '#689d6a', '#a89984',
  \ '#928374', '#fb4934', '#b8bb26', '#fabd2f',
  \ '#83a598', '#d3869b', '#8ec07c', '#ebdbb2',
\]
