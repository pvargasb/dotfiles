nmap <leader>d; <Plug>VimspectorContinue
nmap <leader>d, <Plug>VimspectorStop
nmap <leader>d. <Plug>VimspectorRestart
nmap <leader>dw <Plug>VimspectorPause

nnoremap <leader>dx :VimspectorReset<cr>

nmap <leader>tb <Plug>VimspectorToggleBreakpoint
nmap <leader>tc <Plug>VimspectorToggleConditionalBreakpoint
nmap <leader>dpf <Plug>VimspectorAddFunctionBreakpoint

nmap <leader>dru <Plug>VimspectorRunToCursor
nmap <leader>dre <Plug>VimspectorStepOver
nmap <leader>dri <Plug>VimspectorStepInto
nmap <leader>dro <Plug>VimspectorStepOut

nmap <leader>di <Plug>VimspectorBalloonEval
xmap <leader>di <Plug>VimspectorBalloonEval
nmap <leader>du <Plug>VimspectorUpFrame
nmap <leader>dd <Plug>VimspectorDownFrame
