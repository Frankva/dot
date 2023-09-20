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
" colorscheme desert


" just change ts when there is other size tab like JS is 2
set tabstop=4 " set ts=4
set shiftwidth=0
set softtabstop=-1

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
" set tags="./tags;,tags"
set tags=tags
set tf
set wmnu
set wop="pum,tagfile"


nnoremap Y y$

" like neovim P, do not use on endline 
vnoremap P "_dP

nnoremap n nzz
nnoremap N Nzz
nnoremap <C-U> <C-U>zz
nnoremap <C-D> <C-D>zz

" set guifont=Ubuntu_Mono:h14:cANSI:qDRAFT
" ^l when not show ligature
set guifont=Fira_code:h14:cANSI:qDRAFT
set guiligatures=!\"#$%&()*+-./:<=>?@[]^_{\|~><
set renderoptions=type:directx
set encoding=utf-8

set colorcolumn=80,120

" neovim remap test
nnoremap <C-L> <Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>
inoremap <C-U> <C-G>u<C-U>
inoremap <C-W> <C-G>u<C-W>
xnoremap * y/\V<C-R>"<CR>
xnoremap # y?\V<C-R>"<CR>
nnoremap & :&&<CR>

" let @y=":let @+=@\"\n"
" nnoremap <leader>y <Cmd>let @+=@"<Cr>
" nnoremap <leader>Y <Cmd>let @"=@+<Cr>
nnoremap <Space>y "+y
vnoremap <Space>y "+y
nnoremap <Space>p "+p
vnoremap <Space>p "+p
nnoremap <Space>. <Cmd>Vex<Cr>
nnoremap <Space><Cr> <Cmd>vert ter<Cr>
nnoremap <Space>j <cmd>lnext<CR>zz
nnoremap <Space>k <cmd>lprev<CR>zz
nnoremap <Space>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>






" map <Space> <Leader>
" set shell=C:\Program\ Files\Git\bin\bash

let g:netrw_keepdir = 1 " 1 is the default keep current

let g:netrw_localcopydircmd = 'cp -r'

let g:netrw_banner = 0

" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1
" let g:netrw_winsize = 25
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END

" for vs code with extension vim
inoremap <C-j> <CR>

set omnifunc=syntaxcomplete#Complete
set noswapfile
set nowrap
set cuc
au WinLeave * set nocursorcolumn
au WinEnter * set cursorcolumn

set cul
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
let &t_SR = "\e[4 q"

set ttimeout
set ttimeoutlen=1
set ttyfast

set keywordprg=zeal
nnoremap K :!zeal "<cword>"&<CR><CR>
set title
set spell spelllang=en_us
set nospell

command Arrow exec "normal /function<CR>ciwconst<Esc>f(i = <Esc>$i=> <Esc>$%a;<Esc>"
