inoremap <expr> <C-f> fzf#vim#complete#path($FZF_DEFAULT_COMMAND)
noremap <leader>h :History:<CR>
noremap <C-p> :GFiles<CR>
noremap <leader>b :Buffers<CR>
noremap <leader>f :Files<CR>
let $FZF_DEFAULT_COMMAND="find . -type d \\( -name '.git' \\) -prune -false -o -name '*'"
let $FZF_DEFAULT_OPTS='--reverse'
let g:fzf_preview_window = ['right:50%:hidden', 'ctrl-/']
