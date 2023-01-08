set nocompatible        " use vim defaults
set scrolloff=8         " keep n lines when scrolling
set ai                  " set auto-indenting on for programming

set showcmd             " display incomplete commands
set nobackup            " do not keep a backup file
set number              " show line numbers
set ruler               " show the current row and column

set hlsearch            " highlight searches
set incsearch           " do incremental searching
set showmatch           " jump to matches when entering regexp
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present

set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell

set backspace=indent,eol,start  " make that backspace key work the way it should
set runtimepath=$VIMRUNTIME     " turn off user scripts, https://github.com/igrigorik/vimgolf/issues/129

syntax on               " turn syntax highlighting on by default
filetype on             " detect type of file
filetype indent on      " load indent file for specific file type

set t_RV=               " http://bugs.debian.org/608242, http://groups.google.com/group/vim_dev/browse_thread/thread/9770ea844cec3282

set rnu
colorscheme desert
set shiftwidth=4
set softtabstop=4
set expandtab
set hidden
set ls=2
set autoread
set nolrm
set mouse=nvi
set mousem="popup_setpos"
set nf="bin,hex"
set ssop="blank,buffers,curdir,folds,help,tabpages,winsize,terminal"
set nosol
set tags="./tags;,tags"
set tf
set wmnu
set wop="pum,tagfile"


nnoremap Y y$
vnoremap P "_dP
nnoremap n nzz
nnoremap N Nzz
nnoremap <C-U> <C-U>zz
nnoremap <C-D> <C-D>zz

set guifont=Ubuntu_Mono:h14:cANSI:qDRAFT
set colorcolumn=80,120

" neovim remap test
nnoremap <C-L> <Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>
inoremap <C-U> <C-G>u<C-U>
inoremap <C-W> <C-G>u<C-W>
xnoremap * y/\V<C-R>"<CR>
xnoremap # y?\V<C-R>"<CR>
nnoremap & :&&<CR>

" let @y=":let @+=@\"\n"
nnoremap <leader>y <Cmd>let @+=@"<Cr>
