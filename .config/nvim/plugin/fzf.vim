inoremap <expr> <C-f> fzf#vim#complete#path($FZF_DEFAULT_COMMAND)
noremap <leader>c :Commands<CR>
noremap <leader>h :History:<CR>
noremap <leader>tp :GFiles<CR>
noremap <leader>b :Buffers<CR>
noremap <leader>f :Files<CR>
let $FZF_DEFAULT_COMMAND="find . -type d \\( -name '.git' -o -name 'node_modules' -o -name '.cache' -o -name 'BraveSoftware' -o -name 'Code' -o -name '.vscode' -o -name '.packages' -o -name '.vim' -o -name '.vm' -o -name '.local' -o -name 'spotify' \\) -prune -false -o -name '*'"
let $FZF_DEFAULT_OPTS='--reverse'
let g:fzf_preview_window = ['right:50%:hidden', 'ctrl-/']
