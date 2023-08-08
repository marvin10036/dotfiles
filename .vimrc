if has("syntax")
  syntax on
endif

"========== marvin_changes ==================

set encoding=UTF-8
set relativenumber
filetype on
"set number
set autoindent smartindent
set expandtab
set shiftwidth=2
set tabstop=2 softtabstop=2
set tw=80
set hlsearch
set laststatus=2 
set termguicolors
nnoremap ,nt :NERDTreeToggle<CR>
nnoremap ,f :Files<CR>
nnoremap ,h :%s/<C-R>"//g<Left><Left>

"========== vim-plug ==================

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'joeytwiddle/sexy_scroller.vim'

"Language plugins
Plug 'sheerun/vim-polyglot'
Plug 'chaimleib/vim-renpy'
Plug 'jlcrochet/vim-cs'

""Themes plugins
"Plug 'morhetz/gruvbox'
"Plug 'sickill/vim-monokai'
"Plug 'tomasr/molokai'
"Plug 'mhartington/oceanic-next'
Plug 'ghifarit53/tokyonight-vim'

""Maybe someday plugins
"Plug 'manzeloth/live-server'
"Plug 'ryanoasis/vim-devicons'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"========== Necessary configs for some themes ==================

"## monokai
":colorscheme monokai

"## gruvbox
":colorscheme gruvbox
":set background=dark

"## OceanicNext
"if (has("termguicolors"))
"  set termguicolors
"endif
":colorscheme OceanicNext

"## tokyonight
let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:lightline = {'colorscheme' : 'tokyonight'}
colorscheme tokyonight

"========== Additional config for specific plugins==================

""coc.nvim
"Use enter to confirm completion
"inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

