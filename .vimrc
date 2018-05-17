" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

"Plugins"
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }


" Initialize plugin system
call plug#end()

" Openning NERDTree automatically when Neovim starts.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
