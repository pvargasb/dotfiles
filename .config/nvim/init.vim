""" Basics
set autoindent
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
set number
set shiftwidth=4
set smartcase
set smartindent
set smarttab
set so=4
set spelllang=es
set spellsuggest=10
set splitbelow
set splitright
set tabstop=4
set wildmode=longest,list,full

filetype plugin on
syntax enable

" Map leader
let mapleader = " "

""" Commands

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" When focus gained check for changes in files
autocmd FocusGained,BufEnter * :silent! !

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

""" Byndings

"" General

" Navigating with guides
map ,. <Esc>/<++><Enter>c4l
imap ,. <Esc>/<++><Enter>c4l

" Source configuration
map <leader>% :source ~/.config/nvim/init.vim<CR>

" Split
map <leader>vs :vsplit<CR>
map <leader>hs :split<CR>
map <leader>> :vertical res +5<CR>
map <leader>< :vertical res -5<CR>
map <leader>+ :res +5<CR>
map <leader>- :res -5<CR>

" Buffers
map <leader>bn :enew<cr>
map <leader>bc :bdelete<cr>
map <leader>ba :bufdo bd<cr>
map <leader>bl :bnext<cr>
map <leader>bh :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<space>
map <leader>th :tabprevious<cr>
map <leader>tl :tabnext<cr>

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Spell
map <leader>sl ]s
map <leader>sh [s
map <leader>sc z=

" Compile document, be it groff/LaTeX/markdown/etc.
autocmd FileType tex map <leader>c :w! \| !pdflatex <c-r>%<CR><CR>

" Spell checking
map <leader>s :set spell!<CR>

" Highlight search
map <leader>hl :set hlsearch!<CR>

" Replace all
map <leader>r :%s//gc<Left><Left><Left>

"" Normal

" Leader bindings
nmap <leader>w :w<CR>
nmap <leader>W :w !sudo tee %<CR>
nmap <leader>q :q<CR>
nmap <leader>x :wq<CR>
nmap <leader>Q :q!<CR>

"" Insert

" Set ESC
inoremap ,, <ESC>

"" Visual

" Move indentation
vnoremap < <gv
vnoremap > >gv

""" Vim-plug

call plug#begin('~/.vim/plugged')
" Customization
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
" Search
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
" Edit
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
call plug#end()

""" NerdTree

map <leader>e :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""" Nerdcommenter

let g:NERDSpaceDelims = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDTrimTrailingWhitespace = 1

""" FZF

map <leader>f  :Files<CR>
map <leader>bb :Buffers<CR>
map <leader>m  :Map<CR>
let $FZF_DEFAULT_COMMAND = 'find .'

""" Gruvbox

set background=dark
colorscheme gruvbox

""" Expansions
source $HOME/.config/nvim/expansions\.vim
