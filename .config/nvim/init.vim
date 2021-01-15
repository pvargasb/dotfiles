syntax on
filetype plugin indent on

augroup base
    autocmd!
    " Automatically deletes all trailing whitespace on save.
    autocmd BufWritePre * %s/\s\+$//e
    " When focus gained check for changes in files
    autocmd FocusGained,BufEnter * :silent! !
    " Disables automatic commenting on newline:
    autocmd FileType * setlocal formatoptions -=r formatoptions -=o
augroup END

let mapleader = " "
noremap <C-s> z=
noremap <leader>% :source ~/.config/nvim/init.vim<CR>
noremap <leader>r :%s//gc<Left><Left><Left>
noremap <leader>s :split<CR>
noremap <leader>th :set hlsearch!<CR>
noremap <leader>ts :set spell!<CR>
noremap <leader>v :vsplit<CR>
nnoremap <C-x>e :
nnoremap <leader>Q :q!<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>x :wq<CR>
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-l> :wincmd l<CR>
nnoremap <silent> <M-Up>    :resize +2<CR>
nnoremap <silent> <M-Down>  :resize -2<CR>
nnoremap <silent> <M-Left>  :vertical resize -2<CR>
nnoremap <silent> <M-Right> :vertical resize +2<CR>
vnoremap < <gv
vnoremap > >gv
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
tnoremap <C-a><Esc> <C-\><C-n>

call plug#begin('~/.vim/plugged')
    Plug 'itchyny/lightline.vim'
    Plug 'junegunn/fzf', { 'do': './install --bin' }
    Plug 'junegunn/fzf.vim'
    Plug 'mbbill/undotree'
    Plug 'gruvbox-community/gruvbox'
    Plug 'preservim/nerdtree'
    Plug 'tpope/vim-commentary'
    Plug 'stsewd/fzf-checkout.vim'
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'jiangmiao/auto-pairs'
    Plug 'alvan/vim-closetag'
    Plug 'airblade/vim-rooter'
call plug#end()
