set nocompatible
filetype off

"""""""""""""""""""""""""""""""""""""""
" Vundle
"""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'rust-lang/rust.vim'
Plugin 'w0rp/ale'
Plugin 'timonv/vim-cargo'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
Plugin 'chriskempson/base16-vim'

call vundle#end()
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""
" Colors and fonts
"""""""""""""""""""""""""""""""""""""""
set t_Co=256 " enable 256 colors

set background=dark

if filereadable(expand("~/.vimrc_background"))
    source ~/.vimrc_background
endif

syntax enable " enable syntax processing

set encoding=utf8    " use utf8 as standard encoding
set ffs=unix,dos,mac " use unix as standard file type

"""""""""""""""""""""""""""""""""""""""
" Spaces and tabs
"""""""""""""""""""""""""""""""""""""""
set softtabstop=4 " number of spaces in tab when editing

set expandtab     " use spaces instead of tabs
set smarttab      " be smart when using tabs

set shiftwidth=4  " 1 tab == 4 spaces
set tabstop=4

"""""""""""""""""""""""""""""""""""""""
" User interface
"""""""""""""""""""""""""""""""""""""""
set scrolloff=8 " lines to view above and below the cursor

set wildmenu                " turn on the wild menu
set wildignore=*.o,*~,*.pyc " ignore compiled files

set ruler " always show current position

set hidden " a buffer becomes hidden when it is abandoned

" configure backspace so it acts as it should act
set backspace=indent,eol,start
set whichwrap+=<,>,h,l,[,]

"""""""""""""""""""""""""""""""""""""""
" Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""
" map space to search
map <Space> / 
" map ctrl+space to backwards search
map <C-Space> ?

" disable highlight when ctrl+l is pressed
nnoremap <C-L> :nohl<CR><C-L>

" smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-H> <C-W>l
" with arrow keys
map <C-Down> <C-W>j
map <C-Up> <C-W>k
map <C-Left> <C-W>h
map <C-Right> <C-W>l

" close the current buffer
map <Leader>bd :Bclose<CR>:tabclose<CR>gT

" close all buffers
map <Leader>ba :bufdo bd<CR>

map <Leader>h :bprevious<CR>
map <Leader>l :bnext<CR>
map <Leader><left> :bprevious<CR>
map <Leader><right> :bnext<CR>

map <Leader>tn :tabnew<CR>
map <Leader>to :tabonly<CR>
map <Leader>tc :tabclose<CR>
map <Leader>tm :tabmove<CR>

let g:lasttab=1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab=tabpagenr()

map <Leader>cd :cd %:p:h<CR>:pwd<CR>

try
    set switchbuf=useopen,usetab,newtab
    set stal=2
catch
endtry

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"""""""""""""""""""""""""""""""""""""""
" Status line
"""""""""""""""""""""""""""""""""""""""
set laststatus=2 " always show status line

" For regular expressions turn magic on
set magic

" Display line numbers on the left
set number

" Show partial commands
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting
set hlsearch

set incsearch


" No annoying sounds on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Don't redraw while executing macros
set lazyredraw

set ttimeoutlen=10

" Better screen redraw
set ttyfast

set colorcolumn=81
set nowrap
set smartindent
set autoindent

set showmatch
set matchtime=2

set textwidth=0
set wrapmargin=0
