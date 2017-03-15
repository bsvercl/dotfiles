call plug#begin('~/.config/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
"let g:deoplete#enable_smart_case = 1
let g:deoplete#sources#rust#racer_binary = '/home/bread/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path = '/home/bread/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'
" use tab to cycle through completions
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" rust for deoplete
Plug 'sebastianmarkow/deoplete-rust'

Plug 'neomake/neomake'
let g:neomake_open_list = 2
let g:neomake_error_sign = {
    \ 'text': '>>',
    \ 'texthl': 'NeomakeErrorSign',
    \ }
let g:neomake_warning_sign = {
    \ 'text': '--',
    \ 'texthl': 'NeomakeWarningSign',
    \ }
autocmd BufWritePost *.rs Neomake! cargo

" enable rust in nvim
Plug 'rust-lang/rust.vim'
let g:rustfmt_autosave = 1

" good colorscheme
Plug 'MaxSt/FlatColor'
let g:flatcolor_termcolors = 256

Plug 'scrooloose/nerdtree'

Plug 'jistr/vim-nerdtree-tabs'
let g:nerdtree_tabs_open_on_console_startup = 2
let g:nerdtree_tabs_autofind = 1
map <C-n> <plug>NERDTreeTabsToggle<CR>

Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#neomake#enabled = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_theme = 'flatcolor'
let g:airline_symbols_ascii = 1

call plug#end()

set termguicolors     " enable true colors
colorscheme flatcolor " nice looking colorscheme

set hidden         " hide buffer when abandoned
set relativenumber " show relative line numbers
set showcmd        " show partial command in status line
set showmatch      " show matching brackets
set matchtime=3    " speed up showing match
set nowrap         " do not wrap lines

set expandtab      " tabs are spaces
set tabstop=4      " tabs == 4 spaces
set shiftwidth=4   " indenation amount for <<,>>
set softtabstop=4  " tabs == 4 spaces
set shiftround     " round indent to multiple of shiftwidth

set noerrorbells " no beeps
set novisualbell " no screen flashes

set cursorline   " highlight current line
set cursorcolumn " highlight current column

set splitbelow " horizontal split below current
set splitright " hoizontal split right current

set ignorecase " ignore case during search
"set smartcase  " ...unless the query has a capital letter
set gdefault   " use `g` flag by default

" cancel a search
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
" clear highlighted search
nnoremap <C-L> :nohlsearch<CR>
