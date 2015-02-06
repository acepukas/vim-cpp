
" Generate a tags file (options are best set in the .ctags file in $HOME/.ctags
" or working directory .ctags) and call UpdateTypesFile for the TagHighlight plugin.
nnoremap <F8> :call system("ctags -R .")<CR>:silent UpdateTypesFile<CR>:echo "tags file updated."<CR>

" Run cmake in the build directory via cmake.sh script (script must be present)
nnoremap <F9> :call RunCmake()<CR>
fun! RunCmake()
  if filereadable('cmake.sh')
    echo system('./cmake.sh')
  endif
endfun

" Run make
nnoremap <F10> :make!<CR>
