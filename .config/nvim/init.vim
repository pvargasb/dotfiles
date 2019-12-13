""" Configs

    set nocompatible
    filetype plugin on
    syntax enable
    set number
    set autoread
    set foldmethod=indent
    set clipboard=unnamedplus
    set lazyredraw
    set magic

    " Use spaces instead of tabs
    set expandtab

    " Be smart when using tabs
    set smarttab

    " 1 tab == 4 spaces
    set shiftwidth=4
    set tabstop=4

    set ai "Auto indent
    set si "Smart indent

    " Map leader
    let mapleader = " "

    " Wildmode
    set wildmode=longest,list,full

    " Fixed split
    set splitbelow splitright

    " Spell languaje
    set spelllang=es

    " Ignore case
    set ic

    " No hightlight
    set nohlsearch

""" Commands

   " Automatically deletes all trailing whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e

    " Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

    " Runs a script that cleans out tex build files whenever I close out of a .tex file.
	autocmd VimLeave *.tex !latex_clear %


""" Byndings

    """ General

        " Navigating with guides
        map ,. <Esc>/<++><Enter>c4l
        " Source file
        map <leader>% :source ~/.vimrc<CR>

        " Split byndings
        map <leader>vs :vsplit<CR>
        map <leader>hs :split<CR>
        map <leader>> :vertical res +5<CR>
        map <leader>< :vertical res -5<CR>
        map <leader>+ :res +5<CR>
        map <leader>- :res -5<CR>

        " Tab's byndings
        map <leader>t :tabnew<CR>
        map <leader>n :tabnext<CR>
        map <leader>p :tabprevious<CR>

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
        map <leader>h :set hlsearch!<CR>

        " Replace all
        map <leader>r :%s//gc<Left><Left><Left>

    """ Normal

        " Leader bindings
        nmap <leader>w :w<CR>
        nmap <leader>q :q<CR>
        nmap <leader>x :wq<CR>
        nmap <leader>f :q!<CR>

    """ Insert

        " Set ESC
        inoremap ,, <ESC>

    """ Visual

        " Move indentation
        vnoremap < <gv
        vnoremap > >gv


""" LaTeX

    autocmd FileType tex vnoremap , <ESC>`<i\{<ESC>`>2la}<ESC>?\\{<Enter>a
    autocmd FileType tex inoremap ,fr \begin{frame}<Enter>\frametitle{}<Enter><Enter><++><Enter><Enter>\end{frame}<Enter><Enter><++><Esc>6kf}i
    autocmd FileType tex inoremap ,em \emph{}<++><Esc>T{i
    autocmd FileType tex inoremap ,bf \textbf{}<++><Esc>T{i
    autocmd FileType tex inoremap ,it \textit{}<++><Esc>T{i
    autocmd FileType tex inoremap ,ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
    autocmd FileType tex inoremap ,ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
    autocmd FileType tex inoremap ,li <Enter>\item<Space>
    autocmd FileType tex inoremap ,ref \ref{}<Space><++><Esc>T{i
    autocmd FileType tex inoremap ,tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
    autocmd FileType tex inoremap ,a \href{}{<++>}<Space><++><Esc>2T{i
    autocmd FileType tex inoremap ,sc \textsc{}<Space><++><Esc>T{i
    autocmd FileType tex inoremap ,ch \chapter{}<Enter><Enter><++><Esc>2kf}i
    autocmd FileType tex inoremap ,sec \section{}<Enter><Enter><++><Esc>2kf}i
    autocmd FileType tex inoremap ,ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
    autocmd FileType tex inoremap ,sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
    autocmd FileType tex inoremap ,st <Esc>F{i*<Esc>f}i
    autocmd FileType tex inoremap ,beg \begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
    autocmd FileType tex inoremap ,up <Esc>/usepackage<Enter>o\usepackage{}<Esc>i
    autocmd FileType tex inoremap ,tt \texttt{}<Space><++><Esc>T{i
    autocmd FileType tex inoremap ,nu $\varnothing$
    autocmd FileType tex inoremap ,col \begin{multicols}{<++>}<Enter><++><Enter>\end{multicols}<Enter><Enter><++><Esc>4kA
    autocmd FileType tex inoremap ,rn (\ref{})<++><Esc>F}i


""" Markdown

    autocmd Filetype markdown,rmd map <leader>l yiWi[<esc>Ea](<esc>pa)
	autocmd Filetype markdown,rmd inoremap ,n ---<Enter><Enter>
	autocmd Filetype markdown,rmd inoremap ,b ****<++><Esc>F*hi
	autocmd Filetype markdown,rmd inoremap ,s ~~~~<++><Esc>F~hi
	autocmd Filetype markdown,rmd inoremap ,e **<++><Esc>F*i
	autocmd Filetype markdown,rmd inoremap ,h ====<Space><++><Esc>F=hi
	autocmd Filetype markdown,rmd inoremap ,i ![](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap ,a [](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap ,1 #<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ,2 ##<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ,3 ###<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ,l --------<Enter>


""" Vim-plug

    call plug#begin('~/.vim/plugged')
        Plug 'itchyny/lightline.vim'
        Plug 'scrooloose/nerdtree'
        Plug 'terryma/vim-multiple-cursors'
        Plug 'PotatoesMaster/i3-vim-syntax'
        Plug 'morhetz/gruvbox'
        Plug 'tpope/vim-surround'
        Plug 'scrooloose/nerdcommenter'
        Plug 'kovetskiy/sxhkd-vim'
    call plug#end()

""" NerdTree

	map <leader>e :NERDTreeToggle<CR>
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endifautocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""" Nerdcommenter

    let g:NERDSpaceDelims = 1
    let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
    let g:NERDTrimTrailingWhitespace = 1

""" Gruvbox

    set background=dark
    colorscheme gruvbox
