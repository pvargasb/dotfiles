nnoremap <space>R :CocSearch<space>
nnoremap <silent> K :call <SID>show_documentation()<CR>
nmap <leader>er  <Plug>(coc-rename)
xmap <leader>e=  <Plug>(coc-format-selected)
nmap <leader>e=  <Plug>(coc-format-selected)
nmap <leader>ea  <Plug>(coc-codeaction-cursor)
vmap <leader>ea  <Plug>(coc-codeaction-selected)
nmap <leader>ef  <Plug>(coc-fix-current)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)
nnoremap <silent><nowait> <space>ed  :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> <space>ec  :<C-u>CocList commands<cr>
nnoremap <silent><nowait> <space>et  :<C-u>CocList outline<cr>
nnoremap <silent><nowait> <space>es  :<C-u>CocList -I symbols<cr>
inoremap <silent><nowait><expr> <cr> "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><nowait><expr> <TAB> pumvisible() ? coc#_select_confirm() : "\<TAB>"
inoremap <silent><nowait><expr> <c-space> coc#refresh()
nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"

xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

let g:coc_global_extensions = [
    \ 'coc-marketplace',
    \ 'coc-pairs',
    \ 'coc-explorer',
    \ 'coc-snippets',
    \ 'coc-json',
    \ 'coc-emmet'
  \ ]

let g:coc_snippet_next = '<S-TAB>'

autocmd CursorHold * silent call CocActionAsync('highlight')

command! -nargs=0 Format :call CocAction('format')

augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
