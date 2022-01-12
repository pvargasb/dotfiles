augroup markdown
    autocmd!
    autocmd FileType markdown noremap <leader>tv :MarkdownPreview<CR>
augroup END

function! g:Open_browser_incognito(url)
    silent exec "Start! $BROWSER --incognito --app=" . a:url
endfunction

let g:mkdp_auto_close = 0
let g:mkdp_browserfunc = 'g:Open_browser_incognito'
