
" this command will generate a tags file (options are best set in the .ctags
" file in $HOME/.ctags or working directory .ctags) and call UpdateTypesFile
" for the TagHighlight plugin.
nnoremap <F8> :call system("ctags -R .")<CR>:silent UpdateTypesFile<CR>:echo "tags file updated."<CR>
