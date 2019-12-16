""" Basics
set nocompatible
set autoread
filetype plugin on
syntax enable
set number
set autoread
set foldmethod=indent
set clipboard=unnamedplus
set lazyredraw
set magic
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent

" Disable backups
set nobackup
set nowb
set noswapfile

" Map leader
let mapleader = " "

" Wildmode
set wildmode=longest,list,full

" Fixed split
set splitbelow splitright

" Spell languaje
set spelllang=es

" Ignore case
set ignorecase

" No hightlight
set nohlsearch

" ScrollOff
set so=4

""" Commands

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
autocmd VimLeave *.tex !latex_clear %

" When focus gained check for changes in files
autocmd FocusGained,BufEnter * :silent! !

""" Byndings

"" General

" Navigating with guides
map ,. <Esc>/<++><Enter>c4l
imap ,. <Esc>/<++><Enter>c4l

" Source vimrc
map <leader>% :source ~/.vimrc<CR>

" Split byndings
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

" Show output file
map <leader>p :!latex_output <c-r>%<CR><CR>

" Compile document, be it groff/LaTeX/markdown/etc.
map <leader>c :w! \| !pdflatex <c-r>%<CR><CR>

" Spell checking
map <leader>s :set spell!<CR>

" Highlight search
map <leader>hl :set hlsearch!<CR>

" Replace all
map <leader>r :%s//gc<Left><Left><Left>

"" Normal

" Leader bindings
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>x :wq<CR>
nmap <leader>f :q!<CR>

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
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
" Edtit
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
" Hightlight
Plug 'kovetskiy/sxhkd-vim'
Plug 'PotatoesMaster/i3-vim-syntax'
" Programming
Plug 'dense-analysis/ale'
call plug#end()

""" NerdTree

map <leader>e :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endifautocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""" Nerdcommenter

let g:NERDSpaceDelims = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDTrimTrailingWhitespace = 1

""" FZF

map <C-x><C-f> :Files<CR>
map <C-x><C-b> :Buffers<CR>
map <leader>m  :Map<CR>
let $FZF_DEFAULT_COMMAND = 'find .'

""" ALE

map <leader>a :ALEToggle<CR>

""" Gruvbox

set background=dark
colorscheme gruvbox

""" Expansions
source $HOME/.config/nvim/expansions\.vim
