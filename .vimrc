nmap gc :close<CR>
nmap cx xa
inoremap <C-D> <ESC>$a
inoremap <C-F> <ESC>$a;<ESC>
:silent !echo -ne "\e]12;IndianRed2\007"
"let &t_SI = "\e]12;RoyalBlue1\007"
let &t_SI = "\e]12;green\007"
let &t_EI = "\e]12;IndianRed2\007"
autocmd VimLeave * :!echo -ne "\e]12;grey\007"
nnoremap <silent>gf :YcmCompleter GoToDefinition<CR>
nnoremap <silent>gh :YcmCompleter GoToInclude<CR>
nnoremap <silent>gd :YcmCompleter GoToDeclaration<CR>
nnoremap <silent>gp :YcmCompleter GetParent<CR>
nnoremap <silent>gt :YcmCompleter GetType<CR>
nnoremap <silent>gw :YcmDiags<CR>
let mapleader = ","
set t_Co=256
nmap gm :call Valgrind()<CR>
nnoremap /N  :nohlsearch<CR>
nmap uc :exec"!cp ~/.ycm_extra_conf_c.py ~/.ycm_extra_conf.py"<CR>
nmap ucc :exec"!cp ~/.ycm_extra_conf_cpp.py ~/.ycm_extra_conf.py"<CR>
"nmap md :!~/.vim/markdown.pl % > %.html <CR><CR>
"nmap \ \c
vmap \ \cc
nmap tt :%s/\t/    /g<CR>
map <S-Left> :tabp<CR>
map <S-Right> :tabn<CR>
map! <C-Z> <ESC>zzi
"map! <C-O> <C-Y>,
"map <C-A> ggVG$"+y
nmap <C-E> $
nmap <C-A> ^
nnoremap <F12>  :call Clean()<CR><cr><f6><cr><cr>
"map <C-W> <C-W>
imap <C-K> <C-Y>,
"imap <C-T> <C-Q><TAB>
imap <C-T> <TAB>
imap <C-J> <ESC>
imap <C-V> <ESC><ESC>"*pa
"map <C-V> <ESC>"*pa
imap <C-A> <ESC>^
imap <C-E> <ESC>$
vmap <C-Y> "+y
noremap <C-C> <ESC>
nnoremap <F2> :g/^\s*$/d<CR> 
nnoremap <C-F2> :vert diffsplit 
map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC> :NERDTreeToggle<CR>
map <C-F3> \be  
nmap <C-F5> :call OnlyComp()<CR>
nmap <F4> :call CompileRunclang()<CR>
map <F8> :call Rungdb()<CR>
map <F6> :call FormartSrc()<CR>
inoremap } <C-R>=ClosePair('}')<CR>
"nmap tl :Tlist<CR>
nmap q! :q!<CR>
nmap <F7> :split<CR>
nmap <S-F7> :vsplit<CR>
nmap <space> [i
"nmap 9 $
nmap // ^i//<ESC>j
nmap <enter> i<enter><ESC>
nmap <F5> :call RUNexe()<CR><cr>
nmap <S-f5> :call RUNexe()<CR>
"nmap <tab> i<tab><ESC>
nmap \\ $a//
set sw=4
set ts=4
nnoremap tp :bp <CR> 
nnoremap tn :bn <CR> 
nnoremap td :bd
set et
set smarttab
set smartindent
set lbr
set fo+=mB
set sm
set selection=inclusive
set wildmenu
set mousemodel=popup
au FileType php setlocal dict+=~/.vim/dict/php_funclist.dict
au FileType css setlocal dict+=~/.vim/dict/css.dict
au FileType c setlocal dict+=~/.vim/dict/c.dict
au FileType cpp setlocal dict+=~/.vim/dict/cpp.dict
au FileType scale setlocal dict+=~/.vim/dict/scale.dict
au FileType javascript setlocal dict+=~/.vim/dict/javascript.dict
au FileType html setlocal dict+=~/.vim/dict/javascript.dict
au FileType html setlocal dict+=~/.vim/dict/css.dict
"
"syntastic相关
execute pathogen#infect()
let g:syntastic_python_checkers=['pylint']
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
"golang
"Processing... % (ctrl+c to stop)
let g:fencview_autodetect=0
set rtp+=$GOROOT/misc/vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示相关  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
syntax on 
set cuc
set cul "高亮光标所在行
set shortmess=atI   " 启动的r时候不显示那个援助乌干达儿童的提示  
set go=             " 不要图形按钮  
"color desert     " 设置背景主题  
"color ron     " 设置背景主题  
"color torte    " 设置背景主题  
set guifont=Courier_New:h10:cANSI   " 设置字体  
autocmd InsertLeave * se nocul  " 用浅色高亮当前行  
autocmd InsertEnter * se cul    " 用浅色高亮当前行  
set ruler           " 显示标尺  
set whichwrap+=<,>,h,l   " 允许backspace和光标键跨越行边界(不建议)  
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离  
"set statusline=%F%m%r%h%w\ \ \ \ \ \ [POS=%l,%v]\ [%p%%]\ %{strftime(\"\ -\ %H:%M:%S\")}   "状态行显示的内容  
"set statusline=%F%m%r%h%w\ %Y\ [%l\,%v]\ %p%%\ %{mode()}%{strftime(\"\ -\ %H:%M\")}   "状态行显示的内容  
set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)  
set foldenable      " 允许折叠  
"set foldmethod=   " 折叠  
"set foldmarker=//{,//}
set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  " 显示中文帮助
if version >= 60
    set helplang=cn
    set encoding=utf-8
endif
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 使用空格代替制表符
set expandtab
" 在行和段开始处使用制表符
set smarttab
" 显示行号
set number
" 历史记录数
set history=300
"搜索逐字符高亮
set hlsearch
set incsearch
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" 总是显示状态行
set cmdheight=2
" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 字符间插入的像素行数目

"markdown配置
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=mkd
au BufRead,BufNewFile *.{go}   set filetype=go
au BufRead,BufNewFile *.{js}   set filetype=javascript
"rkdown to HTML  
"nmap Fi :!firefox &   <CR><CR>
"将tab替换为空格



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""新文件标题
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.rb,*.java,*.py exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
    "如果文件类型为.sh文件 
    if &filetype == 'sh' 
        call setline(1,"\#!/bin/bash") 
        call append(line("."), "") 
    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# coding=utf-8")
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
        call append(line(".")+2, " ************************************************************************/") 
        call append(line(".")+3, "")
    endif
    if expand("%:e") == 'cpp'
        call append(line(".")+3, "#include<iostream>")
        call append(line(".")+4, "using namespace std;")
        call append(line(".")+5, "")
    endif
    if &filetype == 'c'
        call append(line(".")+3, "#include<stdio.h>")
        call append(line(".")+4, "")
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
    "新建文件后，自动定位到文件末尾
endfunc 
autocmd BufNewFile * normal G


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"键盘命令
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" shift tab pages
" 选中状态下 Ctrl+c 复制
set mouse=v
set clipboard=unnamed
"去空行  
"比较文件  
"nnoremap <Leader>fu :CtrlPFunky<CR>
nnoremap <C-N> :CtrlPFunky<CR>
nnoremap <Leader>fu :execute 'CtrlPFunky ' . expand('<cword>')<CR>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']
"列出当前目录文件  
"打开树状文件目录  
:autocmd BufRead,BufNewFile *.dot map <F5> :w<CR>:!dot -Tjpg -o %<.jpg % && eog %<.jpg  <CR><CR> && exec "redr!"
"IDE部分
func Clean()
    %s/\([^ ]\)\([!%\^&*-+\/=><]=\)\([^ ]\)/\1 \2 \3/ge
    %s/\([^= ]\)\([<>=]\)\([^= ]\)/\1 \2 \3/ge
    %s/\(include.*\)<\s\+/\1</ge
    %s/,\([^ ]\)/, \1/ge
    %s/- >/->/ge
    %s/>\s\+>/>>/ge
    %s/<\s\+</<</ge
endfunc
"C，C++ 按F5编译运行
let Lib = " "
let exename = 1
func! CompileRunclang()
    exec "w"
    exec "!date"
    if &filetype == 'c'
        if g:exename == 1
            exec "!clang % -o %< -Wextra -g -Wall" g:Lib
        else 
            exec "!clang *.o  -o " g:exename
        endif
    elseif &filetype == 'cpp'
        if g:exename == 1
            exec "!clang++ % -o %< -Wextra -g -Wall " g:Lib
        else 
            exec "!clang++ *.o  -o " g:exename
        endif
    elseif &filetype == 'java' 
        exec "!javac %" 
        "        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        "        exec "!time python2.7 %"
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
func OnlyComp()
    exec"w"
    exec "!date"
    if &filetype == 'c'
        exec "!clang % -c -Wall -Wextra -g " g:Lib 
    endif
    if &filetype == 'cpp'
        exec "!clang++ % -c -Wall -Wextra -g" g:Lib
    endif
endfunc
func Valgrind()
    if g:exename == 1
        exec"!valgrind --leak-check=full -v --show-leak-kinds=all ./%<" 
    else 
        exec"!valgrind --leak-check=full -v --show-leak-kinds=all ./" exename 
    endif
endfunc
"C,C++运行
func RUN()
    if g:isgui==0 
        exec"call RUNexe()<CR><cr>"
    endif
endfunc
func RUNexe()
    exec "!date"
    if &filetype == 'cpp' || &filetype == 'hpp'|| &filetype == 'c'
        if g:exename == 1
            exec "!time ./%<" 
        else 
            exec "!time ./" g:exename
        endif
    elseif &filetype == 'python' 
        exec "!python %"
    elseif &filetype == 'sh'
        exec "!sh %"
    endif
endfunc
"C,C++的调试
func! Rungdb()
    exec "!date"
    if g:exename == 1
        exec "!gdb ./%<"
    else 
        exec "!gdb ./" exename
    endif
endfunc


"代码格式优化化


"定义FormartSrc()
func FormartSrc()
        exec "w"
    if &filetype == 'c'
        exec "!astyle --style=ansi --suffix=none   -A1 %"
    elseif &filetype == 'cpp' || &filetype == 'hpp'
        exec "r !astyle --style=ansi --one-line=keep-statements -a --suffix=none %> /dev/null 2>&1"
    elseif &filetype == 'perl'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'py'||&filetype == 'python'
        exec "r !autopep8 -i --aggressive %"
    elseif &filetype == 'java'
        exec "!astyle --style=java --suffix=none %"
    elseif &filetype == 'jsp'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'xml'
        exec "!astyle --style=gnu --suffix=none %"
    else
        "        exec "normal gg=G"
        return
    endif
    exec "e! %"
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
"当打开vim且没有文件时自动打开NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
" 只剩 NERDTree时自动关闭
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" 设置当文件被改动时自动载入
set autoread
" quickfix模式
autocmd FileType c,cpp map <buffer> <leader><space> :w<CR>:make<cr>
"代码补全 preview
"set completeopt=menu 
"允许插件  
filetype plugin on
"共享剪贴板  
set clipboard+=unnamed 
"自动保存
set autowrite
set ruler                   " 打开状态栏标尺
set cursorline              " 突出显示当前行
"hi CursorLine cterm=NONE ctermbg=black ctermfg=green guibg=black guifg=white
set magic                   " 设置魔术
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
set foldmethod=manual
"set foldcolumn=0
""set foldmethod=indent 
highlight Folded guibg=grey guifg=blue
"set foldlevel=0 
" 不要使用vi的键盘模式，而是vim自己的
set nocompatible
" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase
set linespace=0
" 增强模式中的命令行自动完成操作
set wildmenu
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=c
set selection=exclusive
set selectmode=mouse,key
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=2
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3
" 为C程序提供自动缩进
"自动补全
inoremap ( ()<ESC>i
inoremap ) <C-R>=ClosePair(')')<CR>
inoremap { {<CR>}<ESC>O
inoremap [ []<ESC>i
inoremap ] <C-R>=ClosePair(']')<CR>
inoremap " ""<ESC>i
inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>" else
        return a:char
    endif
endfunction
"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Sort_Type = "name"    " 按照名称排序  
let Tlist_Use_Right_Window = 1  " 在右侧显示窗口  
let Tlist_Compart_Format = 1    " 压缩方式  
let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer  
let Tlist_File_Fold_Auto_Close = 0  " 不要关闭其他文件的tags  
"let Tlist_Enable_Fold_Column = 0    " 不要显示折叠树  
let Tlist_Show_One_File=0            "不同时显示多个文件的tag，只显示当前文件的
"设置tags  
set tags=tags;  
set autochdir 


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
set iskeyword+=.
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

autocmd FileType python set omnifunc=pythoncomplete#Complete

"set nocompatible               " be iMproved
"filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

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
"Bundle 'Better-Javascript-Indentation'

"django

"Bundle 'FredKSchott/CoVim'
"Bundle 'djangojump'
" ...
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
filetype plugin indent on     " required!
"
nmap <silent>tl :silent TagbarToggle<CR>

" 启动时自动focus
let g:tagbar_autofocus = 1

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
"ctrlp设置
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlPMRU<CR>
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
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif     " MacOSX/Linux
"
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_custom_ignore = '\v\.(exe|so|dll)$'
"let g:ctrlp_extensions = ['funky']
"let NERDTreeIgnore=['\.pyc']
"DIY/mZ"nmap
" configure syntastic syntax checking to check on open as well as save
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 0
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
let g:ycm_semantic_triggers = {}
" 引入 C++ 标准库tags
set tags+=/data/misc/software/misc./vim/stdcpp.tags
let g:ycm_semantic_triggers.c = ['->', '.', '&']
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_warning_symbol = '<<'
let g:ycm_error_symbol = '>>'
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_max_diagnostics_to_display = 40
let g:ycm_min_num_of_chars_for_completion=2
" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全         
let g:ycm_seed_identifiers_with_syntax=1
" 开启语义补全
set completeopt=preview,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-Y>" : "\<CR>"	"回车即选中当前项
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-N>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-P>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-P>\<C-N>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-P>\<C-N>" : "\<PageUp>"
 
Bundle 'jsbeautify'
Bundle 'The-NERD-Commenter'
Bundle 'django_templates.vim'
Bundle 'Django-Projects'
Plugin 'Chiel92/vim-autoformat'
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'Yggdroot/indentLine'
Bundle 'L9'
Bundle 'majutsushi/tagbar'
Bundle 'FuzzyFinder'
Bundle 'https://github.com/wincent/command-t.git'
Bundle 'https://github.com/davidhalter/jedi-vim.git'
Bundle 'Auto-Pairs'
Bundle 'python-imports.vim'
Bundle 'CaptureClipboard'
Plugin 'thinca/vim-quickrun'
Bundle 'ctrlp-modified.vim'
Bundle 'last_edit_marker.vim'
Bundle 'synmark.vim'
Bundle 'SQLComplete.vim'
Bundle 'Javascript-OmniCompletion-with-YUI-and-j'
Bundle 'jslint.vim'
Bundle "pangloss/vim-javascript"
Bundle 'Vim-Script-Updater'
Bundle 'scrooloose/nerdcommenter'
Bundle 'ctrlp.vim'
Bundle 'tacahiroy/ctrlp-funky'
"自定义安装
Plugin 'YouCompleteMe'
Plugin 'c.vim'
Plugin 'cpp.vim'
Plugin 'fcitx.vim'
Plugin 'grep.vim'
Plugin 'surround.vim'
Plugin 'vim-colors-solarized'
Plugin 'vim-easymotion'
Plugin 'vim-indent-guides'
Plugin 'vim-signature'
Bundle 'sjl/gundo.vim'
nnoremap <leader>h :GundoToggle<CR>
"easymotion 配置
let g:EasyMotion_smartcase = 1
let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
"unmap ,,s
"map <leader>s <Plug>(easymotion-prefix)
" 重复上一次操作, 类似repeat插件, 很强大
map <Leader><leader>. <Plug>(easymotion-repeat)
colors Blue2
"colors SolarizedDark
"hi CursorLine  term=reverse cterm=reverse ctermbg=Black  guibg=SkyBlue
"highlight CursorLine guifg=SkyBlue    ctermbg=08" ctermfg=Green
function! InsertStatuslineColor(mode)

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
au InsertEnter * call InsertStatuslineColor(v:insertmode)
"
au InsertLeave * hi statusline guibg=orange guifg=white
"
"hi statusline guibg=black
hi YcmWarningSection  term=bold ctermfg=11 gui=bold guifg=Yellow
hi Function  term=bold ctermfg=121 gui=bold guifg=SeaGreen
"颜色
hi linenr ctermfg = 214
let g:indent_guides_auto_colors = 1

let g:indent_guides_guide_size = 1 

"hi CursorLine cterm=reverse ctermbg=242
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
autocmd GUIEnter * colorscheme solarized
hi statusline ctermbg=39 ctermfg=241
hi IndentGuidesOdd guibg=red ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4
"highlight Functions
hi statuslineNC ctermfg=8
se mps-="[:]"
se showmode
se mps+="=:;"
set showcmd         " 输入的命令显示出来，看的清楚些  
    let g:SignatureMap = {
            \ 'Leader'             :  "m",
            \ 'PlaceNextMark'      :  "m,",
            \ 'ToggleMarkAtLine'   :  "m.",
            \ 'PurgeMarksAtLine'   :  "m-",
            \ 'DeleteMark'         :  "dm",
            \ 'PurgeMarkers'       :  "m<BS>",
            \ 'PurgeMarks'         :  "mda",
            \ 'GotoNextLineAlpha'  :  "']",
            \ 'GotoPrevLineAlpha'  :  "'[",
            \ 'GotoNextSpotAlpha'  :  "`]",
            \ 'GotoPrevSpotAlpha'  :  "`[",
            \ 'GotoNextLineByPos'  :  "]'",
            \ 'GotoPrevLineByPos'  :  "['",
            \ 'GotoNextSpotByPos'  :  "mn",
            \ 'GotoPrevSpotByPos'  :  "mp",
            \ 'GotoNextMarker'     :  "[+",
            \ 'GotoPrevMarker'     :  "[-",
            \ 'GotoNextMarkerAny'  :  "]=",
            \ 'GotoPrevMarkerAny'  :  "[=",
            \ 'ListLocalMarks'     :  "ms",
            \ 'ListLocalMarkers'   :  "m?"
            \ }
 let g:indent_guides_enable_on_vim_startup=0
    " 从第二层开始可视化显示缩进
    let g:indent_guides_start_level=1
    " 色块宽度
    let g:indent_guides_guide_size=1
    " 快捷键 i 开/关缩进可视化
:nmap  gz <Plug>IndentGuidesToggle
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
let g:quickrun_config = {
\   "_" : {
\       "outputter" : "message",
\   },
\}
nnoremap gG :Grep
" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
"配置及时生效
"autocmd BufWritePost $MYVIMRC source $MYVIMRC
let g:quickrun_no_default_key_mappings = 1
nmap <Leader>r <Plug>(quickrun)
map <F9> :QuickRun<CR>
set relativenumber
let NERDTreeWinSize=29
    
let g:tagbar_bin='ctags'
let g:tagbar_width=32
