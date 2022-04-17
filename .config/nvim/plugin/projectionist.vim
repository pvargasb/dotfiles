nnoremap <leader>pa :A<CR>
nnoremap <leader>ps :execute 'Spawn!' get(b:, 'start', '')<CR>
nnoremap <leader>pc :Console<CR>
nnoremap <leader>pm :Make<CR>
nnoremap <leader>po :Copen<CR>

let g:projectionist_heuristics = {
    \   "*": {
    \       "*.cpp": {
    \           "console": "g++ {}.cpp -o {} && ./{} && rm {} && read",
    \           "make": "g++ {}.cpp -o {} && ./{} < input && rm {}"
    \       }
    \   },
    \   "pom.xml": {
    \       "*": {
    \           "start": "./mvnw spring-boot:run"
    \       },
    \       "src/main/java/*.java": {
    \           "alternate": "src/test/java/{}Tests.java"
    \       },
    \       "src/test/java/*Tests.java": {
    \           "alternate": "src/main/java/{}.java"
    \       }
    \   }
    \ }
