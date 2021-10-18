imap <C-f> <plug>(fzf-complete-path)
inoremap <expr> <C-x><C-f> fzf#vim#complete#path($FZF_DEFAULT_COMMAND)
noremap <leader>c :Commands<CR>
noremap <leader>h :History:<CR>
noremap <leader>to :History<CR>
noremap <leader>tp :GFiles<CR>
noremap <leader>b :Buffers<CR>
noremap <leader>f :Files<CR>
let g:fzf_preview_window = ['right:50%:hidden', 'ctrl-/']
let $FZF_DEFAULT_OPTS='--reverse'
let $FZF_DEFAULT_COMMAND="find
            \ \! -ipath '*.git*' -a
            \ \! -ipath '*node_modules*' -a
            \ \! -ipath '*.cache*'"
