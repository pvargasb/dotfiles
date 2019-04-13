""" Configs

    set nocompatible
    filetype plugin on
    syntax enable
    set number
    set clipboard=unnamedplus

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

    " Vrtical space for cursor
    set so=7

    " Fixed split
    set splitbelow splitright

    " Spell languaje
    set spelllang=es

""" Commands

   " Automatically deletes all trailing whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e

    " Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

    " Runs a script that cleans out tex build files whenever I close out of a .tex file.
	autocmd VimLeave *.tex !texclear %

""" Byndings

    """ General

        " Navigating with guides
        map ,, <Esc>/<++><Enter>"_c4l
        " Source file
        map <leader>% :source ~/.vimrc<CR>

        " Split byndings
        map <leader>vs :vsplit<CR>
        map <leader>hs :split<CR>

        " Tab's byndings
        map <leader>t :tabnew<CR>
        map <leader>n :tabnext<CR>
        map <leader>p :tabprevious<CR>

        " Shortcutting split navigation, saving a keypress:
        map <C-h> <C-w>h
        map <C-j> <C-w>j
        map <C-k> <C-w>k
        map <C-l> <C-w>l

		" Paste selected text to system clipboard (requires gvim/nvim/vim-x11 installed):
		map <C-p> "+P

        " Show output file
        map <leader>p :!opout <c-r>%<CR><CR>

        " Compile document, be it groff/LaTeX/markdown/etc.
        map <leader>c :w! \| !pdflatex <c-r>%<CR><CR>

        " Spell checking
        map <leader>o :set spell<CR>
        map <leader>O :set nospell<CR>

        " Highlight search
        map <leader>h :set hlsearch<CR>
        map <leader>H :set nohlsearch<CR>

    """ Normal

        " Leader bindings
        nmap <leader>w :w<CR>
        nmap <leader>q :q<CR>
        nmap <leader>x :wq<CR>
        nmap <leader>f :q!<CR>

        " Replace all is aliased to S.
        nnoremap S :%s//gc<Left><Left><Left>

    """ Insert

        " Set ESC
        inoremap jj <ESC>

        " Navigating with guides
        inoremap ,, <Esc>/<++><Enter>"_c4l

    """ Visual

        " Move indentation
        vnoremap < <gv
        vnoremap > >gv

		" Copy selected text to system clipboard (requires gvim/nvim/vim-x11 installed):
		vnoremap <C-c> "+y

        " Navigating with guides
        vnoremap ,, <Esc>/<++><Enter>"_c4l


""" LaTeX

    autocmd FileType tex inoremap ,fr \begin{frame}<Enter>\frametitle{}<Enter><Enter><++><Enter><Enter>\end{frame}<Enter><Enter><++><Esc>6kf}i
    autocmd FileType tex inoremap ,fi \begin{fitch}<Enter><Enter>\end{fitch}<Enter><Enter><++><Esc>3kA
    autocmd FileType tex inoremap ,exe \begin{exe}<Enter>\ex<Space><Enter>\end{exe}<Enter><Enter><++><Esc>3kA
    autocmd FileType tex inoremap ,em \emph{}<++><Esc>T{i
    autocmd FileType tex inoremap ,bf \textbf{}<++><Esc>T{i
    autocmd FileType tex vnoremap , <ESC>`<i\{<ESC>`>2la}<ESC>?\\{<Enter>a
    autocmd FileType tex inoremap ,it \textit{}<++><Esc>T{i
    autocmd FileType tex inoremap ,ct \textcite{}<++><Esc>T{i
    autocmd FileType tex inoremap ,cp \parencite{}<++><Esc>T{i
    autocmd FileType tex inoremap ,glos {\gll<Space><++><Space>\\<Enter><++><Space>\\<Enter>\trans{``<++>''}}<Esc>2k2bcw
    autocmd FileType tex inoremap ,x \begin{xlist}<Enter>\ex<Space><Enter>\end{xlist}<Esc>kA<Space>
    autocmd FileType tex inoremap ,ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
    autocmd FileType tex inoremap ,ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
    autocmd FileType tex inoremap ,li <Enter>\item<Space>
    autocmd FileType tex inoremap ,ref \ref{}<Space><++><Esc>T{i
    autocmd FileType tex inoremap ,tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
    autocmd FileType tex inoremap ,ot \begin{tableau}<Enter>\inp{<++>}<Tab>\const{<++>}<Tab><++><Enter><++><Enter>\end{tableau}<Enter><Enter><++><Esc>5kA{}<Esc>i
    autocmd FileType tex inoremap ,can \cand{}<Tab><++><Esc>T{i
    autocmd FileType tex inoremap ,con \const{}<Tab><++><Esc>T{i
    autocmd FileType tex inoremap ,v \vio{}<Tab><++><Esc>T{i
    autocmd FileType tex inoremap ,a \href{}{<++>}<Space><++><Esc>2T{i
    autocmd FileType tex inoremap ,sc \textsc{}<Space><++><Esc>T{i
    autocmd FileType tex inoremap ,chap \chapter{}<Enter><Enter><++><Esc>2kf}i
    autocmd FileType tex inoremap ,sec \section{}<Enter><Enter><++><Esc>2kf}i
    autocmd FileType tex inoremap ,ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
    autocmd FileType tex inoremap ,sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
    autocmd FileType tex inoremap ,st <Esc>F{i*<Esc>f}i
    autocmd FileType tex inoremap ,beg \begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
    autocmd FileType tex inoremap ,up <Esc>/usepackage<Enter>o\usepackage{}<Esc>i
    autocmd FileType tex inoremap ,tt \texttt{}<Space><++><Esc>T{i
    autocmd FileType tex inoremap ,bt {\blindtext}
    autocmd FileType tex inoremap ,nu $\varnothing$
    autocmd FileType tex inoremap ,col \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA
    autocmd FileType tex inoremap ,rn (\ref{})<++><Esc>F}i


""" Java

    autocmd FileType java inoremap ,sout System.out.println("");<Esc>2hi


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
	autocmd Filetype rmd inoremap ,r ```{r}<CR>```<CR><CR><esc>2kO
	autocmd Filetype rmd inoremap ,p ```{python}<CR>```<CR><CR><esc>2kO
	autocmd Filetype rmd inoremap ,c ```<cr>```<cr><cr><esc>2kO


""" Vim-plug

    call plug#begin('~/.vim/plugged')
        Plug 'itchyny/lightline.vim'
        Plug 'scrooloose/nerdtree'
        Plug 'terryma/vim-multiple-cursors'
        Plug 'PotatoesMaster/i3-vim-syntax'
        Plug 'morhetz/gruvbox'
    call plug#end()

""" NerdTree

	map <leader>e :NERDTreeToggle<CR>
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endifautocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""" Gruvbox

    colorscheme gruvbox
