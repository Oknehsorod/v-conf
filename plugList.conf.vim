call plug#begin(stdpath('data') . '/plugged')

Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" AutoComplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
" Theme
Plug 'morhetz/gruvbox'
" Syntax
Plug 'sheerun/vim-polyglot'

" Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()
