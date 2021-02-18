noremap <leader>, <Esc>/<++><cr>ca<
inoremap \, <Esc>/<++><cr>ca<

""" LaTeX

augroup LaTeX
    autocmd!
    autocmd FileType tex inoremap ,te \emph{}<++><Esc>T{i
    autocmd FileType tex inoremap ,tb \textbf{}<++><Esc>T{i
    autocmd FileType tex inoremap ,ti \textit{}<++><Esc>T{i
    autocmd FileType tex inoremap ,ben \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
    autocmd FileType tex inoremap ,bit \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
    autocmd FileType tex inoremap ,it <Enter>\item<Space>
    autocmd FileType tex inoremap ,sec \section{}<Enter><Enter><++><Esc>2kf}i
    autocmd FileType tex inoremap ,ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
    autocmd FileType tex inoremap ,sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
    autocmd FileType tex inoremap ,beg \begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>?DELRN<CR>
    autocmd FileType tex inoremap ,up <Esc>/usepackage<Enter>o\usepackage{}<Esc>i
    autocmd FileType tex inoremap ,fig \begin{figure}[H]<Enter>\centering<Enter>\includegraphics[width=\textwidth]{<++>}<Enter>\end{figure}<Enter><Enter><++><Esc>?\\textwidth<cr>i
augroup END

""" Markdown

augroup Markdown
    autocmd!
    autocmd Filetype markdown,rmd noremap <leader>l yiWi[<esc>Ea](<esc>pa)
    autocmd Filetype markdown,rmd inoremap ,b ****<++><Esc>F*hi
    autocmd Filetype markdown,rmd inoremap ,s ~~~~<++><Esc>F~hi
    autocmd Filetype markdown,rmd inoremap ,e **<++><Esc>F*i
    autocmd Filetype markdown,rmd inoremap ,i ![](<++>)<++><Esc>F[a
    autocmd Filetype markdown,rmd inoremap ,a [](<++>)<++><Esc>F[a
augroup END
