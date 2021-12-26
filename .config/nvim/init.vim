syntax on
filetype plugin indent on

augroup base
    autocmd!
    " Automatically deletes all trailing whitespace on save.
    autocmd BufWritePre * %s/\s\+$//e
    " When focus gained check for changes in files
    autocmd FocusGained,BufEnter * :silent! !
    " Disables automatic commenting on newline:
    autocmd FileType * setlocal formatoptions -=ro
augroup END

let mapleader = " "
cnoremap w!! :w !sudo tee %<CR>
nnoremap J mzJ`z
nnoremap N Nzzzv
nnoremap n nzzzv
nnoremap z; z=
nnoremap <leader>Q :q!<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>W :wa<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>x :wq<CR>
nnoremap <leader>d "_d
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-l> :wincmd l<CR>
nnoremap <silent> <M-Down>  :resize -2<CR>
nnoremap <silent> <M-Left>  :vertical resize -2<CR>
nnoremap <silent> <M-Right> :vertical resize +2<CR>
nnoremap <silent> <M-Up>    :resize +2<CR>
nnoremap <silent> <Tab> <C-^>
nnoremap <leader>r :.,$s//gc<Left><Left><Left>
noremap <leader>%  :source ~/.config/nvim/init.vim <bar> runtime! plugin/**/*.vim<CR>
noremap <silent> <leader>s  :split<CR>
noremap <silent> <leader>v  :vsplit<CR>
noremap <leader>th :set hlsearch!<CR>
noremap <leader>tz :set spell!<CR>
vnoremap <leader>d "_d
xnoremap <leader>p "_dP
onoremap <silent> ae :<C-U>normal! VggoG<CR>
xnoremap <silent> ae :<C-U>normal! VggoG<CR>
vnoremap < <gv
vnoremap > >gv
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

call plug#begin('~/.vim/plugged')
    Plug 'itchyny/lightline.vim'
    Plug 'junegunn/fzf', { 'do': './install --bin' }
    Plug 'junegunn/fzf.vim'
    Plug 'mbbill/undotree'
    Plug 'gruvbox-community/gruvbox'
    Plug 'tpope/vim-commentary'
    Plug 'stsewd/fzf-checkout.vim'
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'tpope/vim-fugitive'
    Plug 'junegunn/goyo.vim'
    Plug 'tpope/vim-surround'
    Plug 'alvan/vim-closetag'
    Plug 'airblade/vim-rooter'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
    Plug 'honza/vim-snippets'
    Plug 'sheerun/vim-polyglot'
    Plug 'junegunn/vim-easy-align'
    Plug 'mattn/emmet-vim'
    Plug 'voldikss/vim-floaterm'
    Plug 'tpope/vim-repeat'
call plug#end()
