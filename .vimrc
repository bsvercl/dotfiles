set nocompatible
filetype off

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

" A buffer becomes hidden when it is abandoned
set hid

" Set 7 lines to the cursor - when moving vertically
set so=7

" Enable 256 colors
set t_Co=256

set background=dark

if filereadable(expand("~/.vimrc_background"))
    source ~/.vimrc_background
endif

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Always show status line
set laststatus=2

" Configure backspace so it acts as it should act
set backspace=indent,eol,start
set whichwrap+=<,>,h,l,[,]

" Always show current position
set ruler

" For regular expressions turn magic on
set magic

" Display line numbers on the left
set number

" Show partial commands
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting
set hlsearch
nnoremap <C-L> :nohl<CR><C-L>

set incsearch

syntax enable

" No annoying sounds on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Don't redraw while executing macros
set lazyredraw

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set tabstop=4
set shiftwidth=4

set noshowmode
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
