" Wrap long TS errors
autocmd FileType qf setlocal wrap

" Show type info
nnoremap <Leader>t :echo tsuquyomi#hint()<CR>

" Go to definition
nnoremap <Leader>d :TsuDefinition<CR>

" Rename symbol
nnoremap <Leader>r :TsuRenameSymbol<CR>

" Find references
nnoremap <Leader>f :TsuReferences<CR>
