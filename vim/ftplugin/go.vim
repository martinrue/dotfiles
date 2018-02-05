setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal noexpandtab

" Disable using templates for new Go files
let g:go_template_autocreate = 0

" Use goimports when saving
let g:go_fmt_command = 'goimports'

" Enable extra highlighting options
let g:go_highlight_types = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1

let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['typecheck', 'golint']
