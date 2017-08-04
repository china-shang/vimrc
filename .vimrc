set mouse=v
let g:ycm_python_binary_path = '/usr/bin/python3.5'
set clipboard+=unnamed 
set cursorline              " 突出显示当前行
set guioptions-=m           " 隐藏菜单栏
set noeb
set nobackup
set wildmenu
set whichwrap+=<,>,h,l
set smarttab
set mousemodel=popup
set whichwrap+=<,>,h,l   " 允许backspace和光标键跨越行边界(不建议)  
set shiftwidth=4
set helplang=cn
set ruler                   " 打开状态栏标尺
set noswapfile
set mouse=c
set report=0
set showmatch
set iskeyword+=.
set statusline+=%#warningmsg#
set statusline=%F%m%r%h%w\ \ \ %Y\ \ \ %{Mode()}\ \ \ \ \ [%l\,%v]\ \ \ %p%%\ %{strftime(\"\ -\ %H:%M\")}   "状态行显示的内容  
set guioptions-=m
set termguicolors
set undodir=~/tmp/.undo_history/
set guioptions-=r
set showcmd         " 输入的命令显示出来，看的清楚些  
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif     " MacOSX/Linux
set scrolloff=3
set go=             " 不要图形按钮  
set selection=exclusive
set guioptions-=L
set cindent
set guioptions-=T
set termencoding=utf-8
set foldmethod=manual
set selection=inclusive
set encoding=utf8
set statusline+=%*
set gcr=a:block-blinkon0
set relativenumber
set noshowmode
set undofile
set guioptions-=l
set tags+=/data/misc/software/misc./vim/stdcpp.tags
set rtp+=~/.vim/bundle/vundle/
set matchtime=2
set fillchars=vert:\ ,stl:\ ,stlnc:\
set selectmode=mouse,key
set linespace=0
set guioptions-=T           " 隐藏工具栏
set clipboard=unnamed
set incsearch
set foldenable      " 允许折叠  
set cul "高亮光标所在行
set fo+=mB
set ts=4
set backspace=2
set ignorecase
set confirm
set nocompatible
set magic                   " 设置魔术
set autowrite
set autoread
set iskeyword+=_,$,@,%,#,-
set viminfo+=!
set cmdheight=2
set langmenu=zh_CN.UTF-8
set hlsearch
set history=300
set number
set smarttab
set expandtab
set softtabstop=4
set tabstop=4
set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  " 显示中文帮助
set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)  
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离  
set ruler           " 显示标尺  
set guifont=Source\ Code\ Pro\ for\ Powerline\ Regular\ 10   " 设置字体  
set shortmess=atI   " 启动的r时候不显示那个援助乌干达儿童的提示  
set cuc
set nocompatible
set rtp+=$GOROOT/misc/vim
set wildmenu
set sm
set lbr
set et
set sw=4
set t_Co=256

filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on


" autocmd
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=mkd
au BufRead,BufNewFile *.{go}   set filetype=go
au BufRead,BufNewFile *.{lua}   set filetype=lua
au BufRead,BufNewFile *.{js}   set filetype=javascript
au BufRead,BufNewFile *.{py}   set filetype=python
"au BufRead,BufNewFile *.{qml}   set filetype=javascript
au BufRead,BufNewFile *.{qml}   set filetype=qml
au vimenter *.py,*.c,*.cpp,*.h,*.java,*.html,*.js,*.sh TagbarToggle 
au vimenter * AirlineTheme solarized

au FileType python exec' call SetMap()'
au FileType php setlocal dict+=~/.vim/dict/php_funclist.dict
au FileType css setlocal dict+=~/.vim/dict/css.dict
au FileType c setlocal dict+=~/.vim/dict/c.dict
au FileType cpp setlocal dict+=~/.vim/dict/cpp.dict
au FileType scale setlocal dict+=~/.vim/dict/scale.dict
au FileType javascript setlocal dict+=~/.vim/dict/javascript.dict
au FileType qml setlocal dict+=~/.vim/dict/javascript.dict
au FileType html setlocal dict+=~/.vim/dict/javascript.dict
au FileType html setlocal dict+=~/.vim/dict/css.dict
au BufReadPost *.pro exec ":call Setqtpro()"
au BufRead,BufNewFile *.dot map <F5> :w<CR>:!dot -Tjpg -o %<.jpg % && eog %<.jpg  <CR><CR> && exec "redr!"
au vimenter * if !argc() | NERDTree | endif
au FileType c,cpp map <buffer> <leader><space> :w<CR>:make<cr>
"au GUIEnter * colorscheme solarized
au FileType java se completeopt-=preview
au BufNewFile * normal G
au BufRead,BufNewFile *.c,*.cpp,*.h inoremap <C-F> <esc>A;<esc>
au BufNewFile *.cpp,*.[ch],*.sh,*.rb,*.java,*.py exec ":call SetTitle()" 
au bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"au BufWritePost $MYVIMRC source $MYVIMRC
au VimLeave * :!echo -ne "\e]12;grey\007"


"colors Blue2
hi YcmWarningSection  term=bold ctermfg=11 gui=bold guifg=Yellow
hi Function  term=bold ctermfg=121 gui=bold guifg=SeaGreen
"颜色
"hi Function ctermfg=178
"hi linenr ctermfg = 214
"hi statusline ctermbg=39 ctermfg=241
"au VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"au VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
"hi type ctermfg=167
"hi comment ctermfg=141
"hi Identi ctermfg=39
"hi string ctermfg=6
hi Folded guibg=grey guifg=blue
"hi CursorLine ctermbg=238



" map区
nmap gc :close<CR>
inoremap <c-j> <c-x><c-p>
let mapleader = ","
inoremap  <>  <><esc>i
map <Leader><leader>h <Plug>(easymotion-linebackward)
nmap <leader>fa :CtrlPMixed
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)


"unmap ,,s
map <leader><leader>r <Plug>(easymotion-prefix)
" 重复上一次操作, 类似repeat插件, 很强大
map <Leader><leader>. <Plug>(easymotion-repeat)
nnoremap <leader>h :GundoToggle<CR>
"自动补全
nmap  <leader>cm :CommandT
inoremap ( ()<ESC>i
inoremap ) <C-R>=ClosePair(')')<CR>
inoremap { {<CR>}<ESC>O
inoremap [ []<ESC>i
inoremap ] <C-R>=ClosePair(']')<CR>
inoremap " ""<ESC>i
inoremap ' ''<ESC>i
nnoremap <C-N> :CtrlPFunky<CR>
nnoremap <Leader>fu mp:execute 'CtrlPFunky ' . expand('<cword>')<CR>
nnoremap tn :bn <CR> 
nnoremap tp :bp <CR> 
nnoremap td :bd
nmap co tl:copen<CR>tl
nnoremap ,,c :.cc<cr>
nnoremap ,tn :tabn<cr>
nnoremap ,tp :tabp<cr>
nnoremap ,gc :tabc<cr>
"nnoremap en :let exename=
nnoremap gM :split Makefile<cr>
nnoremap <c-w> <c-w><c-w>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-h> <c-w><c-h>
nnoremap <c-l> <c-w><c-l>
inoremap <C-D> <ESC>A
inoremap <C-F> <ESC>A<ESC>
nnoremap <silent>gf :YcmCompleter GoToDefinition<CR>
nnoremap <silent>gh :YcmCompleter GoToInclude<CR>
nmap <silent> <Leader>gh :FSHere<cr>
nnoremap <silent>gd :YcmCompleter GoToDeclaration<CR>
nnoremap <silent>gp :YcmCompleter GetParent<CR>
nnoremap <silent>gt :YcmCompleter GetType<CR>
nnoremap <silent>gw :YcmDiags<CR>
nmap gm :call Valgrind()<CR>
nnoremap /N  :nohlsearch<CR>
nmap uc :exec"!cp ~/.ycm_extra_conf_c.py ~/.ycm_extra_conf.py"<CR>
nmap ucc :exec"!cp ~/.ycm_extra_conf_cpp.py ~/.ycm_extra_conf.py"<CR>
nmap uqt :exec"!cp ~/.ycm_extra_conf_qt.py ~/.ycm_extra_conf.py"<cr>
nmap tt :%s/\t/    /g<CR>
map <S-Left> :tabp<CR>
map <S-Right> :tabn<CR>
map! <C-Z> <ESC>zzi
nmap <C-E> $
"nmap <C-A> ^
nnoremap <F12>  :call Clean()<CR><cr><f6><cr><cr>
imap <C-V> <ESC><ESC>"*pa
imap <C-E> <ESC>$
vmap <C-Y> "+y
noremap <C-C> <ESC>
nnoremap <F2> :g/^\s*$/d<CR> 
nnoremap <C-F2> :vert diffsplit 
nmap <F3> :NERDTreeToggle<CR>
imap <F3> <ESC>:NERDTreeToggle<CR>

"map <C-F3> \be  
nmap <C-F5> :call OnlyComp()<CR>
nmap <F4> :call CompileRunclang()<CR>
map <F8> :call Rungdb()<CR>
map <F6> :call FormartSrc()<CR>
inoremap } <C-R>=ClosePair('}')<CR>
"nmap tl :Tlist<CR>
nmap q! :q!<CR>
nmap <F7> :split
nmap <S-F7> :vsplit
"nmap <space> [i
"nmap 9 $
nmap // o//
nmap <enter> A<enter><ESC>j
nmap <F5> :call RUNexe()<CR>
nmap <S-f5> :call RUNexe()<CR>
"nmap <tab> i<tab><ESC>
nmap <leader>fb :CtrlPBuffer<cr>
nmap <leader>ft :CtrlPBufTagAll<cr>
nmap \\ A//
" 设置光标颜色
":silent !echo -ne "\e]12;IndianRed2\007"
let &t_SI = "\e]12;RoyalBlue1\007"
"let &t_SI = "\e]12;green\007"
"let &t_EI = "\e]12;IndianRed2\007"
"set smartindent
"
" 显示相关  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
syntax on 
let g:qt=0
"set statusline=%F%m%r%h%w\ \ \ \ \ \ [POS=%l,%v]\ [%p%%]\ %{strftime(\"\ -\ %H:%M:%S\")}   "状态行显示的内容  
"set foldmethod=   " 折叠  
"set foldmarker=//{,//}
if version >= 60
    set helplang=cn
    set encoding=utf-8
endif
" 自动缩进
"markdown配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"syntastic相关
execute pathogen#infect()
let g:syntastic_python_checkers=['flake8']
"let g:syntastic_python_checkers=['pylint']
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
"let g:syntastic_python_pylint_args='--disable=C0111,R0903,C0301'
"let g:syntastic_python_flake8_args='--select=E123'
"golang
"Processing... % (ctrl+c to stop)
let g:fencview_autodetect=0
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""新文件标题
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头 
func! Setqtpro()
    let str = getline("$") && g:qt == 1
    if str != "QT += widgets"
        call append(line("$"),"CONFIG+=debug")
        call append(line("$"),"QT += widgets")
        exec 'wq'
    endif
endfunc


""定义函数SetTitle，自动插入文件头 
func! SetMap()
    if &filetype == 'python'
        exec 'inoremap <c-f> <esc>A:<esc>o'
        exec 'inoremap <c-d> <esc>A:<esc>'
    endif
endfunc


func! SetTitle() 
    "如果文件类型为.sh文件 
    if &filetype == 'sh' 
        call setline(1,"\#!/bin/bash") 
        call append(line("."), "") 
    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python3")
        call append(line("."),"# -*- coding: utf-8 -*-")
        call append(line(".")+1, "") 
    elseif &filetype == 'ruby'
        call setline(1,"#!/usr/bin/env ruby")
        call append(line("."),"# encoding: utf-8")
        call append(line(".")+1, "")
        "    elseif &filetype == 'mkd'
        "        call setline(1,"<head><meta charset=\"UTF-8\"></head>")
    else
        call setline(1, "/*************************************************************************") 
        call append(line("."), "    > File Name: ".expand("%")) 
        "        call append(line(".")+1, "    > : ") 
        "        call append(line(".")+2, "    > : ") 
        call append(line(".")+1, "    > Created Time: ".strftime("%c")) 
        call append(line(".")+2, "*************************************************************************/") 
    endif
    if g:qt == 1
        "call append(line(".")+3, "#include <QApplication>")
        "call append(line(".")+4, "")
        exec "normal G"
    elseif expand("%:e") == 'cpp'
        "call append(line(".")+3, "#include <iostream>")
        "call append(line(".")+4, "using namespace std;")
        "call append(line(".")+5, "")
    endif
    if &filetype == 'c'
        "call append(line(".")+3, "#include <stdio.h>")
        "call append(line(".")+4, "")
    endif
    if expand("%:e") == 'h'
        call append(line(".")+3, "#ifndef _".toupper(expand("%:r"))."_H")
        call append(line(".")+4, "#define _".toupper(expand("%:r"))."_H")
        call append(line(".")+5, "#endif")
    endif
    if &filetype == 'java'
        call append(line(".")+3,"public class ".expand("%:r"))
        call append(line(".")+4,"")
    endif
    exec "normal G"
    "新建文件后，自动定位到文件末尾
endfunc 

func! Timerf(timer)
    echo "hello"
endfunction


func! Clean()
    %s/\([^ ]\)\([!%\^&*-+\/=><]=\)\([^ ]\)/\1 \2 \3/ge
" 在操作符前后加空格
    %s/\([^= ]\)\([<>=]\)\([^= ]\)/\1 \2 \3/ge
" 去掉" == "符号中间的空格
    %s/\(include.*\)<\s\+/\1</ge
" 去掉#include <  > 括号边多余的空格 
    %s/,\([^ ]\)/, \1/ge
" , 后家空格
    %s/- >/->/ge
    %s/>\s\+>/>>/ge
    %s/<\s\+</<</ge
    if &filetype == 'python'
        %s/^#\s*/# /ge
    endif
" 去掉 ->  >>   <<  中多余的空格 
endfunc


func! CompileRunclang()
    exec "w"
    "exec 'AsyncRun date +\%T'
    if g:qt == 1 
        exec "AsyncRun qmake&&make "
    elseif &filetype == 'c'
        if getfsize("Makefile") != -1
            exec "AsyncRun make"
        elseif g:exename == 1
            exec "AsyncRun clang % -o %< -Wextra -g -Wall" g:Lib
        else 
            exec "AsyncRun clang *.o  -o " g:exename
        endif
    elseif &filetype == 'cpp'
        if getfsize("Makefile") != -1
            exec "AsyncRun make"
        elseif g:exename == 1
            exec "AsyncRun clang++ % -o %< -Wextra -g -Wall " g:Lib
        else 
            exec "AsyncRun clang++ *.o  -o " g:exename
        endif
    elseif &filetype == 'java' 
        "exec "!javac %" 
        "        exec "AsyncRun time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        "        exec "!time python3 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
        "        exec "!go build %<"
        "        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
    endif
endfunc


func! OnlyComp()
    exec"w"
    exec '!date +\%T'
    if &filetype == 'c'
        exec "AsyncRun clang % -c -Wall -Wextra -g " g:Lib 
    endif
    if &filetype == 'cpp'
        exec "AsyncRun clang++ % -c -Wall -Wextra -g" g:Lib
    endif
endfunc


func!  InsertStatuslineColor(mode)
    if a:mode == 'i'
        hi statusline guibg=peru
        "
    elseif a:mode == 'r'
        "
        hi statusline guibg=blue
        "
    else
        "
        hi statusline guibg=black
        "
    endif
    "
endfunction


"func! mode()
    "if mode() == 'n'
        "return "normal"
    "endif
    "if mode() == 'i'
        "return "insert"
    "endif
    "if mode() == 'v'
        "return "visual"
    "endif
    "if mode() == 'v'
    "return "v-line"
    "endif
    "if mode() == 'v'
        "return "v-blck"
    "endif
    "return mode("fji")
"endfunc


func! Valgrind()
    if g:exename == 1
        exec"!valgrind --leak-check=full -v --show-leak-kinds=all ./%<" 
    else 
        exec"!valgrind --leak-check=full -v --show-leak-kinds=all ./" exename 
    endif
endfunc
"C,C++运行


func!  ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>" else
        return a:char
    endif
endfunction


func! RUN()
    if g:isgui==0 
        exec"call RUNexe()<CR><cr>"
    endif
endfunc
let g:asyn=0


func! RUNexe()
    "exec '!date +\%T'
    if g:qt == 1 && (&filetype == 'cpp' || &filetype == 'hpp'|| &filetype == 'c')
        if g:asyn == 1
            exec 'AsyncRun now=$(pwd)&&./${now\#\#*/}'
        else
            exec '! now=$(pwd)&&./${now\#\#*/} '
        endif
    elseif &filetype == 'cpp' || &filetype == 'hpp'|| &filetype == 'c'
        if g:exename == 1
            exec '!date +\%T&&printf "\n\n"&&time ' "./%<" 
        else 
            exec '!date +\%T&&printf "\n\n"&&time ./' g:exename
        endif
    elseif &filetype == 'python' 
        exec '!date +\%T&&printf "\n\n"&&python3'" %"
    elseif &filetype == 'sh'
        exec '!date +\%T&&printf "\n\n"&&bash '"%"
    elseif &filetype == 'qml'
        exec '!date +\%T&&printf "\n\n"&&qmlscene '"%"
    elseif &filetype == 'javascript'
        exec '!date +\%T&&printf "\n\n"&&node '"%"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'lua'
        exec "!lua5.3 %"
    endif
endfunc
func! Complily()
    if g:qt == 1
        exec 'AsyncRun now=$(pwd)&&./${now\#\#*/}'
    endif
endfunc
"C,C++的调试


func! Rungdb()
    "exec '!date +\%T'
    if g:exename == 1
        exec '!date +\%T&&printf "\n\n"&&gdb '"./%<"
    else 
        exec '!date +\%T&&printf "\n\n"&&gdb '"./" g:exename
    endif
endfunc
map <C-F5> <F4><CR><F5>
"代码格式优化化
"定义FormartSrc()


func! FormartSrc()
        exec "w"
    if &filetype == 'c'
        "exec "!astyle --style=ansi --suffix=none   -A1 -xL %"
        "exec "!astyle --style=ansi --suffix=none   -p -A1 -xL %"
    elseif &filetype == 'cpp' || &filetype == 'hpp'
        "exec "r !astyle --style=ansi --one-line=keep-statements -a --suffix=none -p -xg -xd %> /dev/null 2>&1"
        exec "r !astyle --style=ansi  -p   %  > /dev/null 2>&1"
    elseif &filetype == 'perl'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'py'||&filetype == 'python'
        exec "r !autopep8 -i --aggressive --ignore=E116 %"
    elseif &filetype == 'java'
        exec "!astyle --style=java  -i --suffix=none %"
    elseif &filetype == 'jsp'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'xml'
        exec "!astyle --style=gnu --suffix=none %"
    else
        "        exec "normal gg=G"
        return
    endif
    exec "e! %"
    exec "w "
    
endfunc
"结束定义FormartSrc
if &filetype == 'c' || &filetype =='cpp'
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""实用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal g`\"" |
                \ endif
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"键盘命令
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" shift tab pages
" 选中状态下 Ctrl+c 复制
let g:airline_section_gutter = '%{strftime("%H:%M")}%='
let g:airline_section_x = 'ari%{airline#util#prepend(airline#extensions#tagbar#currenttag(),0)}%{airline#util#wrap(airline#parts#filetype(),0)}'
let g:airline_section_y = ""
let g:airline_section_z = '%3p%% %#__accent_bold#%{g:airline_symbols.linenr}%4l%#__restore__#%#__accent_bold#/%L%{g:airline_symbols.maxlinenr}%#__restore__# :%3v'
"%{airline#util#wrap(airline#extensions#syntastic#get_error(),0)}%{airline#util#wrap(airline#extensions#eclim#get_warnings(),0)}
"%{airline#util#wrap(airline#extensions#syntastic#get_warning(),0)}%{airline#util#wrap(airline#extensions#whitespace#check(),0)}
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']
let g:airline#extensions#tabline#enabled = 1 
"列出当前目录文件  
kk
"C，C++ 按F5编译运行
let Lib = " "
let makeprg="clang\ %\ -o\ %< -Wextra\ -g\ -Wall"
let exename = 1

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1  
"python补全
let g:pydiction_location = '~/.vim/after/complete-dict'
let g:pydiction_menu_height = 20
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
call vundle#rc()
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
filetype plugin indent on     " required!
"
nmap <silent>tl :silent TagbarToggle<CR>
"ctrlp设置
let g:ctrlp_map = '<leader>f'
let g:ctrlp_cmd = 'CtrlP'
map <leader>p :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
"
"set statusline+=%{SyntasticStatuslineFlag()}
let g:ycm_semantic_triggers = {}
" 引入 C++ 标准库tags
let g:ycm_semantic_triggers.c = ['->', '.']
let g:ycm_semantic_triggers.cpp = ['->', '.', '::']
let g:ycm_semantic_triggers.lua=[':', '.']
let g:ycm_semantic_triggers.python=['.']
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_warning_symbol = '<<'
let g:ycm_error_symbol = '>>'
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_max_diagnostics_to_display = 60
let g:ycm_min_num_of_chars_for_completion=3
" 禁止缓存匹配项,每次都重新生成匹配项
"let g:ycm_cache_omnifunc=0
" 语法关键字补全         
let g:ycm_confirm_extra_conf=0
let g:ycm_seed_identifiers_with_syntax=1
" 开启语义补全
"easymotion 配置
let g:EasyMotion_smartcase = 1
let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1 
"hi CursorLine cterm=reverse ctermbg=242
"

"209 
"highlight Functions
"hi statuslineNC ctermfg=8
se mps-="[:]"
se showmode
se mps+="=:;"
 let g:indent_guides_enable_on_vim_startup=0
    " 从第二层开始可视化显示缩进
    let g:indent_guides_start_level=1
    " 色块宽度
    let g:indent_guides_guide_size=1
    " 快捷键 i 开/关缩进可视化
nmap  gz <Plug>IndentGuidesToggle
"let g:indent_guides_color_change_percent = 3


"powerline setup 应该放在
"set statusline后面
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
let g:quickrun_config = {
\   "_" : {
\       "outputter" : "message",
\   },
\}
nnoremap gG :Grep
" 禁止光标闪烁
" 禁止显示滚动条
set guioptions-=R
" 禁止显示菜单和工具条
"配置及时生效
let g:quickrun_no_default_key_mappings = 1
nmap <Leader>r <Plug>(quickrun)
map <F9> :QuickRun<CR>
let NERDTreeWinSize=26
let g:tagbar_bin='ctags'
let g:tagbar_width=32
let g:html5_event_handler_attributes_complete = 0
let g:html5_rdfa_attributes_complete = 0
let g:html5_microdata_attributes_complete = 0
let g:html5_aria_attributes_complete = 0
" 开启保存 undo 历史功能
" undo 历史保存路径
"noew aa
"
"
let g:EclimCompletionMethod = 'omnifunc' 
"se sessionop+=resize
"autocmd FileType java setlocal omnifunc=javacomplete#Complete
"
"se completeopt=longest,menu
se modifiable
let g:instant_markdown_allow_unsafe_content = 1
"let g:jedi#force_py_version = 3
let g:jedi#squelch_py_warning= 0 
let g:ycm_enable_diagnostic_highlighting = 0
"let g:ycm_enable_diagnostic_signs = 0
"let g:ycm_max_diagnostics_to_display = 0
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'nerdtree' : 1,
      \}
"let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_collect_identifiers_from_tags_files = 1
"let g:syntastic_always_populate_loc_list = 1
let g:asyncrun_bell=1
colorscheme SolarizedDark
hi CursorLine       ctermfg=254 ctermbg=23  guifg=#e2e4e5 guibg=#073642 guisp=#073642 


"打开文件类型检测, 加了这句才可以用智能补全
"set completeopt=longest,menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let Tlist_Sort_Type = "name"    " 按照名称排序  
"let Tlist_Use_Right_Window = 1  " 在右侧显示窗口  
"let Tlist_Compart_Format = 1    " 压缩方式  
"let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer  
"let Tlist_File_Fold_Auto_Close = 0  " 不要关闭其他文件的tags  
""let Tlist_Enable_Fold_Column = 0    " 不要显示折叠树  
"let Tlist_Show_One_File=0            "不同时显示多个文件的tag，只显示当前文件的
""设置tags  
"set tags=tags;  
"set autochdir 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"其他东东
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"默认打开Taglist 
"let Tlist_Auto_Open=1 
"""""""""""""""""""""""""""""" 
" Tag list (ctags) 
"""""""""""""""""""""""""""""""" 
"let Tlist_Ctags_Cmd = '/usr/local/bin/ctags' 
"let Tlist_Show_One_File = 0 "不同时显示多个文件的tag，只显示当前文件的 
"let Tlist_File_Fold_Auto_Close = 0
"let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim 
"let Tlist_Use_Right_Window = 1 "在右侧窗口中显示taglist窗口
" minibufexpl插件的一般设置
"nmap md :!~/.vim/markdown.pl % > %.html <CR><CR>
"nmap \ \c
"vmap \ \cc
"map! <C-O> <C-Y>,
"map <C-A> ggVG$"+y
"map <C-W> <C-W>
"imap <C-K> <C-Y>,
"imap <C-T> <C-Q><TAB>
"imap <C-T> <TAB>
"imap <C-J> <ESC>
"map <C-V> <ESC>"*pa
"imap <C-A> <ESC>^
"autocmd InsertLeave * se cul  " 用浅色高亮当前行  
"autocmd InsertEnter * se nocul    " 用浅色高亮当前行  
"autocmd InsertLeave *.py w
"rkdown to HTML  
"nmap Fi :!firefox &   <CR><CR>
"   
"       
"           
"               
"let g:jedi#auto_initialization = 1
"let g:jedi#auto_vim_configuration = 1
"let g:jedi#use_tabs_not_buffers = 1
"let g:jedi#use_splits_not_buffers = "left"
"let g:jedi#popup_on_dot = 0
"let g:jedi#popup_select_first = 0
"let g:jedi#show_call_signatures = "1"
"let g:jedi#goto_command = "<leader>d"
"let g:jedi#goto_assignments_command = "<leader>g"
"let g:jedi#goto_definitions_command = ""
"let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
"let g:jedi#completions_command = "<C-Space>"
"let g:jedi#rename_command = "<leader>r"
"hi pmenu ctermbg=23
"hi pmenusel ctermbg=232
    "let g:SignatureMap = {
            "\ 'Leader'             :  "m",
            "\ 'PlaceNextMark'      :  "m,",
            "\ 'ToggleMarkAtLine'   :  "m.",
            "\ 'PurgeMarksAtLine'   :  "m-",
            "\ 'DeleteMark'         :  "dm",
            "\ 'PurgeMarkers'       :  "m<BS>",
            "\ 'PurgeMarks'         :  "mda",
            "\ 'GotoNextLineAlpha'  :  "'[",
            "\ 'GotoPrevLineAlpha'  :  "']",
            "\ 'GotoNextSpotAlpha'  :  "`[",
            "\ 'GotoPrevSpotAlpha'  :  "`]",
            "\ 'GotoNextLineByPos'  :  "['",
            "\ 'GotoPrevLineByPos'  :  "]'",
            "\ 'GotoNextSpotByPos'  :  "mn",
            "\ 'GotoPrevSpotByPos'  :  "mp",
            "\ 'GotoNextMarker'     :  "[+",
            "\ 'GotoPrevMarker'     :  "[-",
            "\ 'GotoNextMarkerAny'  :  "]=",
            "\ 'GotoPrevMarkerAny'  :  "[=",
            "\ 'ListLocalMarks'     :  "ms",
            "\ 'ListLocalMarkers'   :  "m?"
            ""\ }
" let Vundle manage Vundle
" required! 
" My Bundles here:
"
" original repos on github
"let g:indentLine_char = '┊'
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
" non github repos
"Bundle 'Python-mode-klen'
"Bundle 'JavaScript-Indent'
"django
"Bundle 'FredKSchott/CoVim'
"Bundle 'djangojump'
" ...
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"set nocompatible               " be iMproved
"filetype off                   " required!
" 启动时自动focus
"let g:tagbar_autofocus = 1
" for ruby, delete if you do not need
"let g:tagbar_type_ruby = {
    "\ 'kinds' : [
        "\ 'm:modules',
        "\ 'c:classes',
        "\ 'd:describes',
        "\ 'C:contexts',
        "\ 'f:methods',
        "\ 'F:singleton methods'
    "\ ]
"\ }
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_custom_ignore = '\v\.(exe|so|dll)$'
"let g:ctrlp_extensions = ['funky']
"let NERDTreeIgnore=['\.pyc']
"DIY/mZ"nmap
"" configure syntastic syntax checking to check on open as well as save
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif    "离开插入模式后自动关闭预览窗口
"inoremap <expr> <CR>       pumvisible() ? "\<C-Y>" : "\<CR>"    "回车即选中当前项
"上下左右键的行为 会显示其他信息
"inoremap <expr> <Down>     pumvisible() ? "\<C-N>" : "\<Down>"
"inoremap <expr> <Up>       pumvisible() ? "\<C-P>" : "\<Up>"
"inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-P>\<C-N>" : "\<PageDown>"
"inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-P>\<C-N>" : "\<PageUp>"
"当打开vim且没有文件时自动打开NERDTree
" 只剩 NERDTree时自动关闭
" 设置当文件被改动时自动载入
" quickfix模式
"代码补全 preview
"set 
"completeopt=menu 
"允许插件  
"共享剪贴板  
"自动保存
"hi CursorLine cterm=NONE ctermbg=black ctermfg=green guibg=black guifg=white
"set foldcolumn=0
""set foldmethod=indent 
"set foldlevel=0 
" 不要使用vi的键盘模式，而是vim自己的
" 去掉输入错误的提示声音
" 在处理未保存或只读文件的时候，弹出确认
"禁止生成临时文件
"搜索忽略大小写
" 增强模式中的命令行自动完成操作
" 使回格键（backspace）正常处理indent, eol, start等
" 允许backspace和光标键跨越行边界
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
" 在被分割的窗口间显示空白，便于阅读
" 高亮显示匹配的括号
" 匹配括号高亮的时间（单位是十分之一秒）
" 光标移动到buffer的顶部和底部时保持3行距离
" 为C程序提供自动缩进


hi IndentGuidesOdd guibg=#343f34 
hi IndentGuidesEven guibg=#343f34

Plugin 'Better-Javascript-Indentation'
Plugin 'skywind3000/asyncrun.vim'
Plugin 'suan/vim-instant-markdown'
Plugin 'rdnetto/YCM-Generator' 
Plugin 'jsbeautify'
Plugin 'The-NERD-Commenter'
Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'django_templates.vim'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'othree/html5.vim'
Plugin 'Django-Projects'
Plugin 'chiel92/vim-autoformat'
Plugin 'VundleVim/Vundle.Vim'
Plugin 'tpope/vim-fugitive'"remove github used
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}"//html <p></p>
Plugin 'yggdroot/indentline'
Plugin 'L9'
Plugin 'majutsushi/tagbar'
Plugin 'FuzzyFinder'
Plugin 'wincent/command-t'
Plugin 'https://github.com/davidhalter/jedi-vim.git'
Plugin 'Auto-Pairs'
"Plugin 'python-imports.vim'
Plugin 'CaptureClipboard'
Plugin 'thinca/vim-quickrun'
Plugin 'ctrlp-modified.vim'
Plugin 'last_edit_marker.vim'
Plugin 'synmark.vim'
Plugin 'SQLComplete.vim'
Plugin 'Javascript-OmniCompletion-with-YUI-and-j'
"Plugin 'jslint.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'pangloss/vim-javascript'
Plugin 'Vim-Script-Updater'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
"自定义安装
Plugin 'YouCompleteMe'
Plugin 'c.vim'
Plugin 'cpp.vim'
Plugin 'fcitx.vim'
Plugin 'grep.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'surround.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-signature'
Plugin 'sjl/gundo.vim'
hi clear CursorLine
hi CursorLine       ctermfg=254 ctermbg=23  guifg=#e2e4e5 guibg=#073642 guisp=#073642
