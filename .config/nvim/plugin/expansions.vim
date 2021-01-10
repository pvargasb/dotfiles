map <leader>, <Esc>/<++><cr>ca<

""" LaTeX

augroup LaTeX
    autocmd!
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
augroup END

""" Markdown

augroup Markdown
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
augroup END
