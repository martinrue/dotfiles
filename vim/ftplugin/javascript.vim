" Enable Tsu support for JavaScript
let g:tsuquyomi_javascript_support=1

" Show type info
nnoremap <Leader>t :echo tsuquyomi#hint()<CR>

" Go to definition
nnoremap <Leader>d :TsuDefinition<CR>

" Rename symbol
nnoremap <Leader>r :TsuRenameSymbol<CR>

" Find references
nnoremap <Leader>f :TsuReferences<CR>
