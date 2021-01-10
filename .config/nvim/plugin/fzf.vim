inoremap <C-f> <plug>(fzf-complete-path)
noremap <leader>h :History:<CR>
noremap <C-p> :GFiles<CR>
noremap <leader>b :Buffers<CR>
noremap <leader>f :Files<CR>
let $FZF_DEFAULT_COMMAND='find .'
let $FZF_DEFAULT_OPTS='--reverse'
let g:fzf_preview_window = ['right:50%:hidden', 'ctrl-/']
