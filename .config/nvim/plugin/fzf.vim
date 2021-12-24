imap <C-x><C-f> <plug>(fzf-complete-path)
noremap <leader>c :Commands<CR>
noremap <leader>h :History:<CR>
noremap <leader>to :History<CR>
noremap <leader>tp :GFiles<CR>
noremap <leader>b :Buffers<CR>
noremap <leader>f :Files<CR>
noremap <leader>F :Rg<space>
noremap <leader>t; :Projects<CR>
let g:fzf_preview_window = ['right:50%:hidden', 'ctrl-/']
let $FZF_DEFAULT_OPTS='--reverse'
let $FZF_DEFAULT_COMMAND="find -type d \\(
            \ -name '.[a-zA-Z]*' -o
            \ -name 'node_modules' -o
            \ -name 'build' -o
            \ -name 'dist' -o
            \ -name 'target'
            \ \\) -prune -o -name '*'"
command! -bang -nargs=? -complete=dir Projects
            \ call fzf#vim#files(<q-args>, {'source': "find -type d \\(
            \ -name '.[a-zA-z]*' -a ! -name '.git' -o
            \ -name 'node_modules' -o
            \ -name 'build' -o
            \ -name 'dist' -o
            \ -name 'target'
            \ \\) -prune -o -ipath '*.git'
            \ -printf '%h\\n'"}, <bang>0)
