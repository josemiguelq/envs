" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

"Plugins"
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Valloric/YouCompleteMe', { 'do' : './install.py' }
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'

" Initialize plugin system
call plug#end()


set noexpandtab " Insert tabs rather than spaces for <Tab>.
set smarttab " Tab respects 'tabstop', 'shiftwidth', and 'softtabstop'.
set tabstop=4 " The visible width of tabs.
set softtabstop=4 " Edit as if the tabs are 4 characters wide.
set shiftwidth=4 " Number of spaces to use for indent and unindent.
set shiftround " Round indent to a multiple of 'shiftwidth'.


" Appearance
set number " Show line numbers.

 
" Openning NERDTree automatically when Neovim starts.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
