imap <C-f> <plug>(fzf-complete-path)
map <leader>h :History:<CR>
map <C-p> :GFiles<CR>
map <leader>b :Buffers<CR>
map <leader>f :Files<CR>
let $FZF_DEFAULT_COMMAND='find .'
let $FZF_DEFAULT_OPTS='--reverse'
let g:fzf_preview_window = ['right:50%:hidden', 'ctrl-/']
