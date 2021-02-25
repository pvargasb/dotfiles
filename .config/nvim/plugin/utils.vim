noremap <leader>. :call utils#

fun! utils#textmode()
    set formatoptions+=tca
    set textwidth=70
endfun

fun! utils#quittextmode()
    set formatoptions-=tca
    set textwidth=0
endfun

fun! utils#nofold()
    set foldmethod=manual
endfun

fun! utils#fold()
    set foldmethod=indent
endfun
