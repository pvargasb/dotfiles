let g:vimtex_view_method = 'zathura'

augroup latex
    autocmd!
    autocmd FileType tex noremap <leader>ex :VimtexCompile<CR>
    autocmd FileType tex noremap <leader>tv :VimtexView<CR>
augroup END
