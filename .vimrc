if has("syntax")
  syntax on
endif

"marvin_changes
set encoding=UTF-8
set relativenumber
"set number
set tabstop=2
set hlsearch
set laststatus=2 
nnoremap ,nt :NERDTreeToggle<CR>
nnoremap ,f :Files<CR>

"vim-plug
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'chaimleib/vim-renpy'
"Plug 'manzeloth/live-server'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'ryanoasis/vim-devicons'

call plug#end()

"themes
:colorscheme gruvbox
:set background=dark
