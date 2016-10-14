call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'elmcast/elm-vim'
Plug 'elixir-lang/vim-elixir'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'ludovicchabant/vim-gutentags'
call plug#end()

"Enable deoplete at startup
let g:deoplete#enable_at_startup = 1
"Enable smart case - consider capital letters
let g:deoplete#enable_smart_case = 1
"Tab complete for Deoplete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"Elm format 
let g:elm_format_autosave=1

syntax on
filetype plugin indent on
filetype plugin on
filetype indent on
" Allow unsaved files in buffers to be hidden when opening another file
" Removes the pesky No write since last change errors
set hidden

" Press the key before pasting to remove autoindent
set pastetoggle=<F2>

" 256 color setting for normal VIM
" if $COLORTERM == 'gnome-terminal'
"  set t_Co=256
" endif

"True color setting for NEOVIM
set termguicolors
let g:gruvbox_italic=1
let g:gruvbox_contrast_light='soft'
let g:gruvbox_contrast_dark='medium'

set background=dark
colorscheme gruvbox

let g:airline_powerline_fonts = 1   " Show powerline fonts in airline status bar

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_skip_empty_sections = 1

" Nerdcommenter settings
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Show relative line numbers
" set relativenumber
" Show absolute line numbers
set number


set numberwidth=2 "change the width of the gutter column used for numbering
set cpoptions+=n "use the number column for the text of wrapped lines

" Map the leader key to SPACE
let mapleader="\<SPACE>"

" Open FZF for searching
nnoremap <Leader>f :FZF<CR>
" Quick save file
nnoremap <Leader>s :w<CR>
" Quick save and exit file
nnoremap <Leader>q :q<CR>
" Quick shell command 
nnoremap <Leader>t :!
 
"Map Esc to jk for easy exit from INSERT mode
inoremap jk <Esc>

if !&scrolloff
  set scrolloff=3       " Show next 3 lines while scrolling.
endif

if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif

set noerrorbells        " No beeps.
set esckeys             " Cursor keys in insert mode.
set linespace=0         " Set line-spacing to minimum.
set showcmd             " Show (partial) command in status line.
" set showmatch           " Show matching brackets.<Paste>
set nostartofline       " Do not jump to first character with page commands
set smartcase           " Ignore case unless query has capital
" check file change every 4 seconds 'Cursorhold' and reload buffer upon
" detection
" set autoread
" au CursorHold * checktime

" :cd ~/Documents/elm/test
