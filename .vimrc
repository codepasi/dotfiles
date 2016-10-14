execute pathogen#infect()
syntax on
filetype plugin indent on

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

set background=dark
colorscheme gruvbox

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set number
set numberwidth=2 "change the width of the gutter column used for numbering
set cpoptions+=n "use the number column for the text of wrapped lines

"Map Esc to jk for easy exit from INSERT mode
inoremap jk <Esc>

" check file change every 4 seconds 'Cursorhold' and reload buffer upon
" detection
set autoread
au CursorHold * checktime

:cd ~/Documents/elm/test
