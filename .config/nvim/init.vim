set autoindent
set noerrorbells
set termguicolors
set autoread
set clipboard=unnamedplus
set expandtab
set foldmethod=indent
set hidden
set lazyredraw
set magic
set nobackup
set nocompatible
set nohlsearch
set noswapfile
set nowritebackup
set relativenumber
set shiftwidth=4
set smartcase
set smartindent
set smarttab
set scrolloff=8
set spelllang=es,en
set spellsuggest=10
set splitbelow
set splitright
set tabstop=4
set wildmode=longest,list,full
set textwidth=70
set mouse=a

filetype plugin on
syntax enable

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e
" When focus gained check for changes in files
autocmd FocusGained,BufEnter * :silent! !
" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions -=r formatoptions -=o

let mapleader = " "
imap ., <Esc>/<++><cr>ca<
map ., <Esc>/<++><cr>ca<
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <leader><leader> :
map <leader>% :source ~/.config/nvim/init.vim<CR>
map <leader>hl :set hlsearch!<CR>
map <leader>s :split<CR>
map <leader>r :%s//gc<Left><Left><Left>
map <leader>ts :set spell!<CR>
map <leader>S z=
map <leader>v :vsplit<CR>
nmap <leader>Q :q!<CR>
nmap <leader>W :w !sudo tee %<CR>
nmap <leader>q :q<CR>
nmap <leader>w :w<CR>
nmap <leader>x :wq<CR>
vnoremap < <gv
vnoremap > >gv

call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
call plug#end()

let g:NERDSpaceDelims = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDTrimTrailingWhitespace = 1

map <leader>f  :Files<CR>
map <leader>bb :Buffers<CR>
map <leader>m  :Map<CR>
let $FZF_DEFAULT_COMMAND = 'find .'
let $FZF_DEFAULT_OPTS='--reverse'

set background=dark
colorscheme gruvbox

source $HOME/.config/nvim/expansions\.vim
