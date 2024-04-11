set nocompatible        " use vim defaults
set scrolloff=4         " keep n lines when scrolling
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
set sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,terminal"
set nosol
" set tags="./tags;,tags"
set tags=tags
set tf
set wmnu
set wop="pum,tagfile"


nnoremap Y y$

" like neovim P, (do not use on endline, almost fix)
xnoremap P <C-[>a <c-[>gv"_dPl"_xh

" center when
nnoremap n nzz
nnoremap N Nzz
nnoremap <C-U> <C-U>zz
nnoremap <C-D> <C-D>zz
if ! has('win32')| set guifont=Fira\ Code\ 14 | endif
if has('win32')| set guifont=Fira_code:h14:cANSI:qDRAFT | endif
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


" break undo sequence when new line
inoremap <C-J> <C-G>u<CR>
inoremap <C-M> <C-G>u<CR>
inoremap <CR> <C-G>u<CR>

nnoremap <Space>y "+y
nnoremap <Space>Y "+y$
xnoremap <Space>y "+y
xnoremap <Space>Y "+y$
nnoremap <Space>p "+p
xnoremap <Space>p "+p
"nnoremap <Space>. <Cmd>Vex<CR><C-W><S-L><C-W>=
nnoremap <Space><C-I><Space> <Cmd>Tex<CR>
nnoremap <Space><Tab><Space> <Cmd>Tex<CR>

let g:netrw_fastbrowse=2
" nnoremap <Space><Space> :Explore<CR><C-6>:Rexplore<CR>
nnoremap <Space><Space> <Cmd>Explore<CR>

nnoremap <Space>. q:gg"_dGiAfter typing filename, do C-I or Tab<C-[>oe **/*
xnoremap <Space>. "tyq:ie **/*<C-r>t<C-x><C-v>
nnoremap <Space><CR> <Cmd>vert ter<CR><C-W><S-L><C-W>=
" nnoremap <Space><CR> <Cmd>terminal ++curwin<CR>
nnoremap <Space>oR <Cmd>terminal ++curwin<CR>
nnoremap <Space>or <Cmd>terminal<CR><C-W><S-J><Cmd>res 12<CR>
nnoremap <Space>j <cmd>lnext<CR>zz
nnoremap <Space>k <cmd>lprev<CR>zz
nnoremap <Space>ss :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left><C-f>
xnoremap <Space>ss "ty:%s/<C-r>t/<C-r>t/gI<Left><Left><Left><C-f>
nnoremap <Space>/ :lvimgrep! "\<<C-r><C-w>\>" ./*/**\|lopen<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><C-f>
xnoremap <Space>/ "ty:lvimgrep! '<C-r>t' ./*/**\|lopen<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><C-f>
nnoremap <Space>sp :lvimgrep! "\<<C-r><C-w>\>" ./*/**\|lopen<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><C-f>
xnoremap <Space>sp "ty:lvimgrep! '<C-r>t' ./*/**\|lopen<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><C-f>
" nnoremap <Space>p :n %/**/**<Left>
" nnoremap <Space>p :n ./**/**<Left>
" nnoremap <Space><C-P> q:ie **/*
" xnoremap <Space><C-P> "tyq:ie **/*<C-r>t<C-x><C-v>
nnoremap <Space>gf :next **/*<C-r><C-W>*<CR>
xnoremap <Space>gf "ty:next **/*<C-r>t*<CR>
nnoremap <Space><C-W>gf "tyiw:tabnew<CR>:next **/*<C-r>t*<CR>
xnoremap <Space><C-W>gf "ty:tabnew<CR>:next **/*<C-r>t*<CR>
"nnoremap <Space><S-P> q:ivsplit **/*
"nnoremap <Space><M-P> q:itabedit **/*
"nnoremap <Space><C-T> q:itabedit **/*
" nnoremap <Space>bb q:ibuffer <C-O>: buffers<CR>
nnoremap <Space>bb :redir => tmp<CR>:silent execute ":buffers"<CR>:redir END<CR>q:gg"_dG<C-[>:put =tmp<CR>:resize<CR>obuffer 
nnoremap <Space>, :redir => tmp<CR>:silent execute ":buffers"<CR>:redir END<CR>q:gg"_dG<C-[>:put =tmp<CR>:resize<CR>obuffer 
nnoremap <Space>bB :redir => tmp<CR>:silent execute ":buffers!"<CR>:redir END<CR>q:gg"_dG<C-[>:put =tmp<CR>:resize<CR>obuffer 
nnoremap <Space>< :redir => tmp<CR>:silent execute ":buffers!"<CR>:redir END<CR>q:gg"_dG<C-[>:put =tmp<CR>:resize<CR>obuffer 
nnoremap <Space>bN :enew<CR>
nnoremap <Space>bd :bd<CR>
nnoremap <Space>bk :bd<CR>
nnoremap <Space>bO :%bdelete<CR>
nnoremap <Space>bn :bn<CR>
nnoremap <Space>b] :bn<CR>
nnoremap <Space>bp :bp<CR>
nnoremap <Space>b[ :bp<CR>
nnoremap <Space>bl :blast<CR>
nnoremap <Space>bS :wa<CR>
nnoremap <Space>bs :w<CR>
if ! has('win32') | nnoremap <Space>bu :w !sudo tee % <CR>| endif

nnoremap <Space>qq :qa<CR>
nnoremap <Space>qQ :qa!<CR>
nnoremap <Space>qs :mks!<CR>
nnoremap <Space>qS :mks! 
nnoremap <Space>ql :source Session.vim<CR>
nnoremap <Space>qL :source 
nnoremap <Space>tl :set rnu!<CR>
nnoremap <Space>tI :set et!<CR>
nnoremap <Space>tr :set readonly!<CR>
nnoremap <Space>tw :set wrap!<CR>
nnoremap <Space><C-I>n :tabnew<CR>
nnoremap <Space><Tab>n :tabnew<CR>
nnoremap <Space><C-I>v :tabedit %<CR>
nnoremap <Space><Tab>v :tabedit %<CR>
nnoremap <Space>of <Cmd>tabnew<CR><C-Tab>
nnoremap <Space><C-I>d :tabclose<CR>
nnoremap <Space><Tab>d :tabclose<CR>
nnoremap <Space><C-I>0 :tablast<CR>
nnoremap <Space><Tab>0 :tablast<CR>
nnoremap <Space><C-I>1 :tabfirst<CR>
nnoremap <Space><Tab>1 :tabfirst<CR>
nnoremap <Space><C-I>2 :tabnext 2<CR>
nnoremap <Space><Tab>2 :tabnext 2<CR>
nnoremap <Space><C-I>3 :tabnext 3<CR>
nnoremap <Space><Tab>3 :tabnext 3<CR>
nnoremap <Space><C-I>4 :tabnext 4<CR>
nnoremap <Space><Tab>4 :tabnext 4<CR>
nnoremap <Space><C-I>5 :tabnext 5<CR>
nnoremap <Space><Tab>5 :tabnext 5<CR>
nnoremap <Space><C-I>6 :tabnext 6<CR>
nnoremap <Space><Tab>6 :tabnext 6<CR>
nnoremap <Space><C-I>7 :tabnext 7<CR>
nnoremap <Space><Tab>7 :tabnext 7<CR>
nnoremap <Space><C-I>8 :tabnext 8<CR>
nnoremap <Space><Tab>8 :tabnext 8<CR>
nnoremap <Space><C-I>9 :tabnext 9<CR>
nnoremap <Space><Tab>9 :tabnext 9<CR>
nnoremap <Space><C-I>` g<Tab>
nnoremap <Space><Tab>` g<Tab>
nnoremap <Space><C-I>] gt
nnoremap <Space><Tab>] gt
nnoremap <Space><C-I>[ gT
nnoremap <Space><Tab>[ gT
nnoremap <Space><C-I>l :source 
nnoremap <Space><Tab>l :source 
nnoremap <Space><C-I>r :source Session.vim
nnoremap <Space><Tab>r :source Session.vim
nnoremap <Space>w <C-W>
nnoremap <Space>wmm :resize<CR>:vertical resize<CR>
nnoremap <Space>wms :resize<CR>
nnoremap <Space>wmv :vertical resize<CR>
nnoremap <Space>cc :make<CR>
nnoremap <Space>cx :copen<CR>
nnoremap <Space>op :Lexplore<CR>

nnoremap <Space>gcc :!git commit<CR>
nnoremap <Space>gb q:gg"_dG:r!git branch -a<CR>:resize<CR>o!git checkout 
" nnoremap <Space>gb :!git branch -a && bash<CR>git t checkout checkout 
nnoremap <Space>gB :!git blame '%'<CR>
" nnoremap <Space>gg :!clear&&git status<CR>
nnoremap <Space>ggg :!clear&&git status --show-stash&&git add --interactive<CR>
nnoremap <Space>ggp :!git push<CR>
nnoremap <Space>gp :!git push<CR>
nnoremap <Space>ggF :!git pull<CR>
nnoremap <Space>gF :!git fetch<CR>
 
nnoremap <Space>gcr q:i!git init ./
nnoremap <Space>gcR q:i!git clone <C-[>
nnoremap <Space>gC q:i!git clone <C-[>
nnoremap <Space>gL :!git log <CR>
nnoremap <Space>gS :!git add '%' <CR>
nnoremap <Space>gU :!git rm '%' <CR>
nnoremap <Space>gR :!git restore '%' <CR>


nnoremap <Space>iF "%p
xnoremap <Space>iF "%p
let insertFileName = 'm''o%vT/"ty"_dd"tp'
nnoremap <Space>if @=insertFileName<CR>
xnoremap <Space>if <C-[>o<C-R>%a<C-[>"tyT/"_ddgv"tp
nnoremap <Space>hrr :!reset<CR>
xnoremap <Space>hrr :!reset<CR>

let testfilecommand="!python '%' "
nnoremap <Space>ft :<C-R>=testfilecommand<cr><cr>

xnoremap S<Space> <C-[>`<i <C-[>`>la <C-[>
xnoremap S` <C-[>`<i`<C-[>`>la`<C-[>
xnoremap S' <C-[>`<i'<C-[>`>la'<C-[>
xnoremap S" <C-[>`<i"<C-[>`>la"<C-[>
xnoremap S( <C-[>`<i( <C-[>`>lla )<C-[>`<
xnoremap S) <C-[>`<i(<C-[>`>la)<C-[>`<
xnoremap S[ <C-[>`<i[ <C-[>`>lla ]<C-[>`<
xnoremap S] <C-[>`<i[<C-[>`>la]<C-[>`<
xnoremap S{ <C-[>`<i{ <C-[>`>lla }<C-[>`<
xnoremap S} <C-[>`<i{<C-[>`>la}<C-[>`<
xnoremap S< <C-[>`<i< <C-[>`>lla ><C-[>`<
xnoremap S> <C-[>`<i<<C-[>`>la><C-[>`<


nnoremap ds` vi`<c-[>l"_x`<h"_x
nnoremap ds' vi'<c-[>l"_x`<h"_x
nnoremap ds" vi"<c-[>l"_x`<h"_x
nnoremap ds( va(<c-[>"_x`<<c-[>"_x
nnoremap ds) va(<c-[>"_x`<<c-[>"_x
nnoremap ds[ va[<c-[>"_x`<<c-[>"_x
nnoremap ds] va[<c-[>"_x`<<c-[>"_x
nnoremap ds{ va{<c-[>"_x`<<c-[>"_x
nnoremap ds} va{<c-[>"_x`<<c-[>"_x
nnoremap ds< va<<c-[>"_x`<<c-[>"_x
nnoremap ds> va<<c-[>"_x`<<c-[>"_x

nnoremap ysiw` viw<c-[>a`<c-[>`<i`<c-[>
nnoremap ysiw' viw<c-[>a'<c-[>`<i'<c-[>
nnoremap ysiw" viw<c-[>a"<c-[>`<i"<c-[>
nnoremap ysiw( viw<c-[>a )<c-[>`<i( <c-[>
nnoremap ysiw) viw<c-[>a)<c-[>`<i(<c-[>
nnoremap ysiw[ viw<c-[>a ]<c-[>`<i[ <c-[>
nnoremap ysiw] viw<c-[>a]<c-[>`<i[<c-[>
nnoremap ysiw{ viw<c-[>a }<c-[>`<i{ <c-[>
nnoremap ysiw} viw<c-[>a}<c-[>`<i{<c-[>
nnoremap ysiw< viw<c-[>a ><c-[>`<i< <c-[>
nnoremap ysiw> viw<c-[>a><c-[>`<i<<c-[>

nnoremap cs'" vi'<c-[>lr"`<hr"
nnoremap cs"' vi"<c-[>lr'`<hr'

function Vst(tag)
    execute 'normal `>a</' . a:tag .'>`<i<' . a:tag . '>'
endfunction
xnoremap St <C-[>:call Vst('')<left><left>
nnoremap ysiwt viw<C-[>:call Vst('')<left><left>
nnoremap dst vat<C-[>da<`<da<
nnoremap cst" vat<C-[>ca<"<C-[>`<ca<<C-[>"
nnoremap cst' vat<C-[>ca<'<C-[>`<ca<<C-[>'
function Cstt(tag)
    execute'normal vatci</' . a:tag . '`<ci<'. a:tag .''
endfunction
nnoremap cstt <C-[>:call Cstt('')<left><left>


" xnoremap v "ty/<C-R>t<CR>
nnoremap <Space>fs :w<CR>
nnoremap <Space>fS :w 
let copyFile = 'mto/%vT/y"_dd''t'
nnoremap <Space>fy @=copyFile<CR>
nnoremap <Space>fE :tabedit ~/.vimrc<CR>


nnoremap <Space>gv `[v`]
onoremap <silent> im :<C-U>normal k]MV[m<CR>
xnoremap im :<C-U>normal k]MV[m<CR>

inoremap <C-[> <C-[><C-[>
xnoremap <C-[> <C-[><C-[>
cnoremap <C-[> <C-c>


" xnoremap . :normal . <CR>
" xnoremap @ :normal @

" remap netrw
augroup netrw_mapping
    autocmd!
    autocmd filetype netrw call NetrwMapping()
augroup END

function! NetrwMapping()
    noremap <buffer> X :cd % \| !explorer .<CR>
endfunction

let g:netrw_browsex_viewer= "xdg-open"

" end remap netrw

" map <Space> <Leader>
" set shell=C:\Program\ Files\Git\bin\bash

let g:netrw_keepdir = 1 " 1 is the default keep current
let g:netrw_localcopydircmd = 'cp -r'

let g:netrw_banner = 0

" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1


set omnifunc=syntaxcomplete#Complete
" the default si : set complete=.,w,b,u,t,i
set complete=.,w,b,u,i
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

set keywordprg=man
nnoremap K :!zeal -f "<cword>" > /dev/null &<CR><CR>

" set keywordprg=xdg-open\ https://devdocs.io/\\#q=\
" set keywordprg=start\ firefox\ https://devdocs.io/\\#q=\
" nnoremap K :!start https://devdocs.io/\#q="<cword>"&<CR><CR>

set title

set spell spelllang=en_us
set nospell

command Arrow exec "normal 0/function<CR>ciwconst<Esc>f(i = <Esc>$i=> <Esc>$%a;<Esc>"
command Getter exec "normal 0yypciwpublic<Esc>wwyiw~biget<Esc>$xa() <Esc>a{<Esc>o}<Esc>koreturn <C-r>0;<Esc>"
command Setter exec "normal 0yypciwpublic<Esc>w\"tyiwciwvoid<Esc>w\"iyiw~biset<Esc>$s(<C-r>t <C-r>i) {<Esc>othis.<C-r>i = <C-r>i;<Esc>o}<Esc>"
command Gsetter exec "normal 0:Setter<CR>3k:Getter<CR>kV5jo0dk"
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
" setlocal efm=Date:%m,P%m,F%m,N%m,%f:%l |
autocmd Filetype css setlocal tabstop=4 | setlocal et
autocmd Filetype python setlocal tabstop=4 | setlocal et
autocmd Filetype php setlocal tabstop=4 | setlocal et |
    \ set nospell
autocmd Filetype htmldjango setlocal tabstop=2 | setlocal et
autocmd Filetype html setlocal tabstop=2 | setlocal et
autocmd Filetype jsp setlocal tabstop=2 | setlocal et
autocmd Filetype javascript setlocal tabstop=2 | setlocal et
autocmd Filetype make setlocal tabstop=4 | setlocal noet
autocmd Filetype java setlocal tabstop=4 | setlocal et
autocmd Filetype pug setlocal tabstop=2 | setlocal et
autocmd Filetype json setlocal tabstop=2 | setlocal et
autocmd Filetype sh setlocal tabstop=4 | setlocal et | nnoremap K K
" autocmd Filetype markdown setlocal spell | setlocal spelllang=fr


set timeoutlen=10000

autocmd BufRead,BufNewFile *.org setfiletype org |
\ syntax match PreProc  /^\*.*/ |  syntax match String /<.*>/ |
\syntax match String /\[.*\]/ | syntax match Comment /^#.*/ |
\syntax match String =\v<(((https?|ftp|gopher)://|(mailto|file|news):)[^' ^I<>"]+|(www|web|w3)[a-z0-9_-]*\.[a-z0-9._-]+\.[^' ^I<>"]+)[a-zA-Z0-9/]=

" macro sql to string python with return
let sqlToString = "vipI'vip$A 'vip>Ireturn wi(vip$a)vipoj>"

let printPython = "yiwoprint('0: ', 0)"

let consolelog = 'yiwoconsole.log(''"'', ");'

