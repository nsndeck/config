set shell=/bin/bash " avoid errors caused by using exotic shells e.g. fish

"completion
set completeopt=menuone

"the sane settings
set shiftwidth=4
set tabstop=4
set softtabstop=4
"expand tabs into spaces
set expandtab
set autoindent
set smartindent
set smarttab

"highlighting
syntax on

" search and replace
set ignorecase
set hlsearch
set incsearch

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" show a completion popup for commands
set wildmenu

"shortcuts
:noremap <silent> <c-l> :noh<cr><c-l>
" c-s shortcuts do not work on linux
" :imap <C-S> <ESC>:wa<CR>
" :map <C-S> :wa<CR>

" nerdtree shortcuts
:nnoremap <silent> <F2> :NERDTreeToggle<CR>

" pyhton
autocmd FileType python nnoremap <buffer> <F5> :exec '!python' shellescape(@%, 1)<cr>
" node
autocmd FileType javascript nnoremap <buffer> <F5> :exec '!node' shellescape(@%, 1)<cr>

"let g:NERDTreeRespectWildIgnore = 1

" Don't blink at me!
set novisualbell
" And now stop the blinking too.
set vb t_vb=

"set the GUI 'current' folder relative to the buffer
set browsedir=buffer

"configure a monospace font that supports cyrillic
if has("unix")
    set guifont=DejaVu\ Sans\ Mono\ 12
    "set guifont=Ubuntu\ Mono\ 14
else
    set guifont=Consolas:h12
    "set guifont=DejaVu_Sans_Mono:h12
endif

set guioptions-=T "No toolbar
set guioptions-=m "No menubar
set guioptions-=r "No right scrollbar
set guioptions-=R "No right scrollbar
set guioptions-=l "No left scrollbar
set guioptions-=L "No left scrollbar

" Save UI space
set number

"Set xterm terminal title
set title
"Shorter messages
set shortmess=atI

set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands

"setup window
if has("gui_running")
    "winpos 0 0
    set lines=56
    set columns=230
    set t_Co=256
    set background=dark
    colorscheme evening 
endif

set ttyfast
set laststatus=2

set nocompatible

set viminfo=%,<800,'10,/50,:100,h,f0,n~/.vim/cache/.viminfo

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage plugins
Plugin 'VundleVim/Vundle.vim'

" add nerdtree
Plugin 'scrooloose/nerdtree'

" add nerdcommenter
Plugin 'scrooloose/nerdcommenter'

" add surround
Plugin 'tpope/vim-surround'

call vundle#end()
filetype plugin indent on

" nerdtree settings
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeQuitOnOpen=1
let NERDTreeWize=1000

"autosave buffers
set autowriteall

"unicode options. we want utf-8 and no BOM symbols
set encoding=utf-8
setglobal fileencoding=utf-8
set nobomb

"don't litter with annoying files when opening a file
set nobackup
set nowritebackup
set noswapfile
set nofoldenable
" set backupdir=~/.vim/tmp,/tmp
" set directory=~/.vim/tmp,/tmp

"Hide abandoned buffers in order to not lose undo history.
set hidden
"Moar history!
set history=1000
