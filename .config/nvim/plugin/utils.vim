noremap <leader>.. :call utils#

noremap <leader>.t :call utils#textmode()<CR>
fun! utils#textmode()
    set formatoptions+=tca
    set textwidth=70
endfun

noremap <leader>.q :call utils#quittextmode()<CR>
fun! utils#quittextmode()
    set formatoptions-=tca
    set textwidth=0
endfun

noremap <leader>.n :call utils#nofold()<CR>
fun! utils#nofold()
    set foldmethod=manual
endfun

noremap <leader>.f :call utils#fold()<CR>
fun! utils#fold()
    set foldmethod=indent
endfun
