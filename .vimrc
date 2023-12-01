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

"set ignorecase          " ignore case when searching
set ic
" set smartcase           " no ignorecase if Uppercase char present
" set scs!

set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell

set backspace=indent,eol,start  " make that backspace key work the way it should
set runtimepath=$VIMRUNTIME     " turn off user scripts, https://github.com/igrigorik/vimgolf/issues/129

syntax on               " turn syntax highlighting on by default
" syntax enable               " turn syntax highlighting on by default
filetype on             " detect type of file
filetype indent on      " load indent file for specific file type

set t_RV=               " http://bugs.debian.org/608242, http://groups.google.com/group/vim_dev/browse_thread/thread/9770ea844cec3282

set rnu
" colorscheme default


"
" just change ts when there is other size tab like JS is 2, py is 4
set tabstop=4 " set ts=4
set shiftwidth=0
set softtabstop=-1

set expandtab " set et,  set noet
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

" center when
nnoremap n nzz
nnoremap N Nzz
nnoremap <C-U> <C-U>zz
nnoremap <C-D> <C-D>zz

" set guifont=Ubuntu_Mono:h14:cANSI:qDRAFT
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



nnoremap <Space>y "+y
nnoremap <Space>Y "+y$
vnoremap <Space>y "+y
vnoremap <Space>Y "+y$
nnoremap <Space>p "+p
vnoremap <Space>p "+p
"nnoremap <Space>. <Cmd>Vex<CR><C-W><S-L><C-W>=
nnoremap <Space>t <Cmd>Tex<CR>
nnoremap <Space>. <Cmd>Explore<CR>
nnoremap <Space><CR> <Cmd>vert ter<CR><C-W><S-L><C-W>=
nnoremap <Space>j <cmd>lnext<CR>zz
nnoremap <Space>k <cmd>lprev<CR>zz
nnoremap <Space>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left><C-f>
vnoremap <Space>s "ty:%s/<C-r>t/<C-r>t/gI<Left><Left><Left><C-f>
nnoremap <Space>/ :lvimgrep! "\<<C-r><C-w>\>" ./*/**\|lopen<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><C-f>
vnoremap <Space>/ "ty:lvimgrep! '<C-r>t' ./*/**\|lopen<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><C-f>
" nnoremap <Space>p :n %/**/**<Left>
" nnoremap <Space>p :n ./**/**<Left>
" nnoremap <Space><C-P> q:ie **/*
nnoremap <Space><Space> q:ie **/*
vnoremap <Space><Space> "tyq:ie **/*<C-r>t<C-x><C-v>
" vnoremap <Space><C-P> "tyq:ie **/*<C-r>t<C-x><C-v>
nnoremap <Space>gf :next **/*<C-r><C-W>*<CR>
vnoremap <Space>gf "ty:next **/*<C-r>t*<CR>
nnoremap <Space><C-W>gf "tyiw:tabnew<CR>:next **/*<C-r>t*<CR>
vnoremap <Space><C-W>gf "ty:tabnew<CR>:next **/*<C-r>t*<CR>
"nnoremap <Space><S-P> q:ivsplit **/*
"nnoremap <Space><M-P> q:itabedit **/*
"nnoremap <Space><C-T> q:itabedit **/*
" nnoremap <Space>bb q:ibuffer <C-O>: buffers<CR>
nnoremap <Space>bb :redir => tmp<CR>:silent execute ":buffers"<CR>:redir END<CR>q:ggdG<C-[>:put =tmp<CR>:resize<CR>obuffer 
nnoremap <Space>, :redir => tmp<CR>:silent execute ":buffers"<CR>:redir END<CR>q:ggdG<C-[>:put =tmp<CR>:resize<CR>obuffer 
nnoremap <Space>bB :redir => tmp<CR>:silent execute ":buffers!"<CR>:redir END<CR>q:ggdG<C-[>:put =tmp<CR>:resize<CR>obuffer 
nnoremap <Space>< :redir => tmp<CR>:silent execute ":buffers!"<CR>:redir END<CR>q:ggdG<C-[>:put =tmp<CR>:resize<CR>obuffer 
nnoremap <Space>bN :new\|wincmd o<CR>
nnoremap <Space>bd :bd<CR>
nnoremap <Space>bk :bd<CR>
nnoremap <Space>bn :bn<CR>
nnoremap <Space>bp :bp<CR>
nnoremap <Space><Tab>n :tabnew<CR>
nnoremap <Space><Tab>d :tabclose<CR>
nnoremap <Space><Tab>0 :tablast<CR>
nnoremap <Space><Tab>1 :tabfirst<CR>
nnoremap <Space><Tab>2 :tabnext 2<CR>
nnoremap <Space><Tab>3 :tabnext 3<CR>
nnoremap <Space><Tab>4 :tabnext 4<CR>
nnoremap <Space><Tab>5 :tabnext 5<CR>
nnoremap <Space><Tab>6 :tabnext 6<CR>
nnoremap <Space><Tab>7 :tabnext 7<CR>
nnoremap <Space><Tab>8 :tabnext 8<CR>
nnoremap <Space><Tab>9 :tabnext 9<CR>
nnoremap <Space><Tab>` g<Tab>
nnoremap <Space>w <C-W>
nnoremap <Space>cc :make<CR>
nnoremap <Space>cx :copen<CR>
nnoremap <Space>op :Lexplore<CR>
nnoremap <Space>gg :!git commit<CR>
nnoremap <Space>gb q:ggdG:r!git branch<CR>:resize<CR>o!git checkout 
nnoremap <Space>gB :!git blame %<CR>
nnoremap <Space>gg :!clear&&git status<CR>
nnoremap <Space>iF "%p
vnoremap <Space>iF "%p
nnoremap <Space>if m'o<C-R>%<C-[>vT/"ty"_dd<C-O>"tp
vnoremap <Space>if <C-[>o<C-R>%a<C-[>"tyT/"_ddgv"tp

vnoremap S` <C-[>a`<C-[>gvo<C-[>i`<C-[>
vnoremap S' <C-[>a'<C-[>gvo<C-[>i'<C-[>
vnoremap S" <C-[>a"<C-[>gvo<C-[>i"<C-[>
vnoremap S( <C-[>a)<C-[>gvo<C-[>i(<C-[>
vnoremap S) <C-[>a)<C-[>gvo<C-[>i(<C-[>

vnoremap / "ty/<C-R>t<CR>
nnoremap <Space>fs :w<CR>

" map <Space> <Leader>
" set shell=C:\Program\ Files\Git\bin\bash

let g:netrw_keepdir = 1 " 1 is the default keep current
let g:netrw_localcopydircmd = 'cp -r'

let g:netrw_banner = 0

" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1

" for vs code with extension vim
inoremap <C-j> <CR>

" set omnifunc=syntaxcomplete#Complete
set noswapfile
set nowrap

set cuc
au WinLeave * set nocursorcolumn
au WinEnter * set cursorcolumn
" au WinLeave * set nocursorline nocursorcolumn
" au WinEnter * set cursorline cursorcolumn

set cul
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
let &t_SR = "\e[4 q"

set ttimeout
" set ttimeoutlen=1 " this bug on windows when do `vim` in a shell
set ttyfast

set keywordprg=zeal
nnoremap K :!zeal "<cword>"& >/dev/null<CR><CR>

" set keywordprg=xdg-open\ https://devdocs.io/\\#q=\
" set keywordprg=start\ firefox\ https://devdocs.io/\\#q=\
" nnoremap K :!start https://devdocs.io/\#q="<cword>"&<CR><CR>

set title

set spell spelllang=en_us
set nospell

command Arrow exec "normal /function<CR>ciwconst<Esc>f(i = <Esc>$i=> <Esc>$%a;<Esc>"
command Sneakcase exec "normal /\\u<CR>i_<Esc>l"
command Rc exec ":tabedit ~/.vimrc"
command Vimrc exec ":tabedit ~/.vimrc"
command Ctags exec ":!nohup ctags -R . > /dev/null &"
command Md exec ":!nohup ghostwriter '%' > /dev/null &"
command Add exec ":!git add '%'"
command Commit exec ":!git commit"
command Status exec ":!git status"
command Restore exec ":!git restore '%'"
command Push exec ":!git push"
command Diff exec ":!git diff '%'"

command DiffMaster exec ":!git diff HEAD..master '%'"
command DiffMain exec ":!git diff HEAD..main '%'"

set efm=%m "errorformat

autocmd Filetype css setlocal tabstop=4 | setlocal et
autocmd Filetype python setlocal tabstop=4 | setlocal et
autocmd Filetype php setlocal tabstop=4 | setlocal et |
    \setlocal efm=Date:%m,P%m,F%m,N%m,%f:%l | set nospell
autocmd Filetype htmldjango setlocal tabstop=2 | setlocal et
autocmd Filetype html setlocal tabstop=2 | setlocal et
autocmd Filetype javascript setlocal tabstop=2 | setlocal et
autocmd Filetype make setlocal tabstop=4 | setlocal noet
autocmd Filetype markdown setlocal spell | setlocal spelllang=fr


set timeoutlen=10000
