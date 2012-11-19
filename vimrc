" jk as a shortcut for escape in Insert and Command modes
noremap! jk <Esc>
noremap! kj <Esc>
" and in visual and select modes
vnoremap jk <Esc>
vnoremap kj <Esc>
" allow some mouse input
set mouse=a
" syntax highlighting
syntax enable
set background=dark
colorscheme solarized
" line numbering and line wrapping
set nu
set lbr
" syntax highlighting
syntax on
" show cursor position all the time
set ruler
" allow copy to clipboard
set clipboard+=unnamed
