call plug#begin('~/.vim/plugged')

" Fuzzy finding
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Comments
Plug 'tpope/vim-commentary'

" Theme
Plug 'arcticicestudio/nord-vim'

" Status line
Plug 'itchyny/lightline.vim'

" Editorconfig
Plug 'editorconfig/editorconfig-vim'

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Required by tsuquyomi
Plug 'Shougo/vimproc.vim', { 'do' : 'make' }

" TypeScript
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'Quramy/tsuquyomi'

" Prettier
Plug 'prettier/vim-prettier'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" TOML
Plug 'cespare/vim-toml'

" CSS3
Plug 'hail2u/vim-css3-syntax'

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

call plug#end()

" New leader
let mapleader = ","

" No banner on netrw
let g:netrw_banner=0

" Fold based on syntax
set foldlevelstart=99
set foldmethod=indent
let javaScript_fold=1

" Show line numbers
set number

" 80 character lines
set textwidth=80

" Search options
set hlsearch
set smartcase
set ignorecase
set incsearch

" Tab options
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Show line:column
set ruler

" Allow backspace where one would expect
set backspace=indent,eol,start

" Yanks also copy to system clipboard
set clipboard=unnamed

" Set terminal colours
if has("termguicolors")
  set termguicolors
endif

" Highlight syntax and set theme
syntax on
colorscheme nord
set background=dark

" Don't wrap long lines
set nowrap

" Don't select first item in completion
set completeopt=longest,menuone

" Don't show completion preview window
set completeopt-=preview

" Split below and to the right
set splitbelow
set splitright

" Switch between the last two files
nnoremap <Leader><Leader> <C-^>

" Ctrl+arrow to move between splits
nnoremap <C-down> <C-w>j
nnoremap <C-up> <C-w>k
nnoremap <C-left> <C-w>h
nnoremap <C-right> <C-w>l

" Ctrl+/ to comment current line
nmap <C-_> <Plug>CommentaryLine
vmap <C-_> <Plug>Commentary

" Ctrl+f to find within files
nnoremap <C-f> :Rg<Cr>

" Ctrl+p to fuzzy find files
nnoremap <C-p> :Files<Cr>

" Allow alt+up/down to move lines
nnoremap <A-down> :m .+1<CR>==
nnoremap <A-up> :m .-2<CR>==
inoremap <A-down> <Esc>:m .+1<CR>==gi
inoremap <A-up> <Esc>:m .-2<CR>==gi
vnoremap <A-down> :m '>+1<CR>gv=gv
vnoremap <A-up> :m '<-2<CR>gv=gv

" Space to toggle folds
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Remove highlights on enter
nnoremap <CR> :noh<CR><CR>

" Trigger omnicomplete with ctrl+space
inoremap <C-space> <C-x><C-o>

" Save with ctrl+s
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>i

" Format JSON objects
command! FormatJSON execute "%!jq ."

" Support tab complete
set wildmode=list:longest,list:full

fun! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<Tab>"
  else
    return "\<C-p>"
  endif
endfun

inoremap <Tab> <C-r>=InsertTabWrapper()<CR>
inoremap <S-Tab> <C-n>

fun! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

command! TrimWhitespace call TrimWhitespace()

" Status line config
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [
      \     [ 'mode', 'paste' ],
      \     [ 'fugitive', 'filename' ]
      \   ]
      \ },
      \ 'component_function': {
      \   'readonly': 'LightlineReadonly',
      \   'modified': 'LightlineModified',
      \   'filename': 'LightlineFilename'
      \ },
      \ 'separator': {
      \   'left': '',
      \   'right': ''
      \ },
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
    \ }

fun! LightlineModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfun

fun! LightlineReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return ""
  else
    return ""
  endif
endfun

fun! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
       \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
       \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfun
