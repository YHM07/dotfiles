" ------------------------------------------------------------------------
"
" @file: .vimrc
" @brief vim config file
" @author H.M.Yang,hmyang07@gmail.com
" @version v2.3
" @date 10/27/2014
" @revision 08/25/2015 @REMEAD.md
"
" ------------------------------------------------------------------------

" ========================================================================
"                          << 以下为软件默认配置 >>
" ========================================================================
" 修改leader键
" let mapleader = ','
" let g:mapleader = ','

" 编码
set encoding       =utf-8			" UTF-8 编码
set termencoding   =utf-8
set formatoptions +=mM
set fencs          =utf-8,gbk
set helplang       =cn

set nocompatible				" 关闭 vi 兼容模式
syntax on					" 自动语法高亮
" colorscheme molokai				" 设定配色方案
" colorscheme desert 				" 设定配色方案
" 修改注释的颜色
" hi Comment ctermfg=blue
" 修改字符串的颜色
" hi String ctermfg = darkred
" 修改类型颜色
" hi Type ctermfg = yellow
" 修改数字颜色
" hi Number ctermfg = darkblue
" 修改常量颜色
" hi Constant ctermfg = blue
" 修改声明颜色
" hi Statement ctermfg = darkyellow
" 修改下拉菜单颜色
hi Pmenu ctermfg = 0 ctermbg = 5 guibg = LightMagenta
" 修改下拉菜单选中条目颜色 
hi PmenuSel ctermfg = 0 ctermbg = 7 guibg = Gray 
set number						" 显示行号
set cursorline 						" 突出显示当前行
" 设置缩进
set shiftwidth  =4 					" 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop =4 					" 使得按退格键时可以一次删掉 4 个空格
set tabstop     =4 					" 设定 tab 长度为 4
" 备份设置
set nobackup 						" 覆盖文件时不备份
set autochdir 						" 自动切换当前目录为当前文件所在的目录
set backupcopy =yes 					" 设置备份时的行为为覆盖
" 搜索设置
set ignorecase 						" 搜索时忽略大小写
set smartcase						" 但在有一个或以上大写字母时仍保持对大小写敏感
set nowrapscan 						" 禁止在搜索到文件两端时重新搜索
set incsearch 						" 输入搜索内容时就显示搜索结果
set hlsearch 						" 搜索时高亮显示被找到的文本
" 设置静音模式
set noerrorbells 					" 关闭错误信息响铃
set novisualbell 					" 关闭使用可视响铃代替呼叫
set t_vb=						" 置空错误铃声的终端代码
" 括号匹配
" set showmatch 					" 插入括号时，短暂地跳转到匹配的对应括号
" set matchtime = 2 					" 短暂跳转到匹配括号的时间
set magic						" 设置魔术
set hidden						" 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set guioptions-=T 					" 隐藏工具栏
set guioptions-=m 					" 隐藏菜单栏
set smartindent 					" 开启新行时使用智能自动缩进
set backspace=indent,eol,start				" 不设定在插入状态无法用退格键和 Delete 键删除回车符
" 设置状态栏，这一部分放在Powerline后边，不然状态栏命令不显示
set ruler						" 打开状态栏标尺
set showcmd 						" 显示命令
set cmdheight=1 					" 设定命令行的行数为 1
" 设置在状态行显示的信息
set laststatus =2 					" 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline =\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 
" 打开文件时自动跳转到关闭文件时，光标所在位置
if has("autocmd")
	  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif 

" ------------------------------------------------------------------------
" set paste                        " 设置vim进入paste模式，粘贴格式不会错乱
" set nopaste			   " 退出paste模式
" ------------------------------------------------------------------------ " 编程相关设置
" 代码折叠
set foldenable 					" 开启折叠
set foldmethod =syntax 				" 设置语法折叠
set foldcolumn =0 				" 设置折叠区域的宽度
setlocal foldlevel =1          			" 设置折叠层数
" set foldclose =all 				" 设置为自动关闭折叠
" 用空格键来开关折叠 
" nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
set completeopt =longest,menu		" 关掉只能补全时的预览窗口
filetype plugin indent on      		" 打开智能补全

" Buffers操作快捷方式!
nnoremap <C-RETURN>   :bnext<CR>
nnoremap <C-S-RETURN> :bprevious<CR>

" Tab操作快捷方式!
nnoremap <C-TAB>   :tabnext<CR>
nnoremap <C-S-TAB> :tabprev<CR>

"关于tab的快捷键
" map tn :tabnext<cr>
" map tp :tabprevious<cr>
" map td :tabnew .<cr>
" map te :tabedit
" map tc :tabclose<cr>

"窗口分割时,进行切换的按键热键需要连接两次,比如从下方窗口移动
"光标到上方窗口,需要<c-w><c-w>k,非常麻烦,现在重映射为<c-k>,切换的
"时候会变得非常方便.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"一些不错的映射转换语法（如果在一个文件中混合了不同语言时有用）
nnoremap <leader>1 :set filetype=xhtml<CR>
nnoremap <leader>2 :set filetype=css<CR>
nnoremap <leader>3 :set filetype=javascript<CR>
nnoremap <leader>4 :set filetype=php<CR>

" set fileformats=unix,dos,mac
" nmap <leader>fd :se fileformat=dos<CR>
" nmap <leader>fu :se fileformat=unix<CR>

" use Ctrl+[l|n|p|cc] to list|next|previous|jump to count the result
" map <C-x>l <ESC>:cl<CR>
" map <C-x>n <ESC>:cn<CR>
" map <C-x>p <ESC>:cp<CR>
" map <C-x>c <ESC>:cc<CR>

" Python 文件的一般设置，比如不要 tab 等
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab
autocmd FileType python map <F12> :!python %<CR>

autocmd BufNewFile *.py 0r ~/.vim/templates/python.py 
autocmd BufNewFile *.py normal G

" =========================================================================
"                          << 以下为用户自定义配置 >>
" =========================================================================

" ------------------------------------------------------------------------
"  < Vundle 插件管理工具配置 >
" ------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Plugin 'gmarik/Vundle.vim'
Bundle 'gmarik/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'WolfgangMehner/c.vim'
"Bundle 'vim-scripts/Vim-Markdown-Preview'
Bundle	'jtratner/vim-flavored-markdown'
"Bundle 'suan/vim-instant-markdown'
Bundle 'Kris2k/minibufexpl.vim'
Bundle 'Townk/vim-autoclose'
"Bundle 'terryma/vim-multiple-cursors'
"Bundle 'mattn/calendar-vim'
Bundle 'itchyny/calendar.vim'
"Bundle 'kakkyz81/evervim'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'davidhalter/jedi-vim'
Bundle 'rkulla/pydiction'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'ctrlpvim/ctrlp.vim'

" plugin from http://vim-scripts.org/vim/scripts.html

Bundle 'L9'
Bundle 'DoxygenToolkit.vim'
"Bundle 'NeoComplCache'
Bundle 'omnicppcomplete'
"Bundle 'SuperTab'
Bundle 'bash-support.vim'
Bundle 'a.vim'
Bundle 'STL-improved'
Bundle 'indexer.tar.gz'
Bundle 'DfrankUtil'
Bundle 'project.tar.gz'
" Bundle 'cscope'
Bundle 'taglist.vim'
Bundle 'Align'
Bundle 'Markdown'
Bundle 'vimprj'
Bundle 'winmanager'
Bundle 'AutoComplPop'
Bundle 'vimwiki'
Bundle 'awk-support.vim'
" Bundle 'ZenCoding'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ========================================================================
"                          << 以下为常用插件配置 >>
" ========================================================================

"-------------------------------------------------------------------------
" plugin - NERD_tree.vim 
" 以树状方式浏览系统中的文件和目录
" :NERDtree 打开NERD_tree :NERDtreeClose 关闭NERD_tree
" o 打开关闭文件或者目录 t 在标签页中打开
" T 在后台标签页中打开 ! 执行此文件
" p 到上层目录 P 到根目录
" K 到第一个节点 J 到最后一个节点
" u 打开上层目录 m 显示文件系统菜单（添加、删除、移动操作）
" r 递归刷新当前目录 R 递归刷新当前根目录
"-------------------------------------------------------------------------
" <F3> NERD_tree切换
map  <F3> :NERDTreeToggle<CR>
imap <F3> <ESC>:NERDTreeToggle<CR>

"-------------------------------------------------------------------------
" plugin - DoxygenToolkit.vim 
" 由注释生成文档，并且能够快速生成函数标准注释
"-------------------------------------------------------------------------
let g:DoxygenToolkit_authorName            = "H.M.Yang,hmyang07@gmail.com"
let g:DoxygenToolkit_briefTag_funcName     = "yes"
let g:DoxygenToolkit_undocTag              = "DOXIGEN_SKIP_BLoCK"
let g:DoxygenToolkit_briefTag_pre          = "@brief  "
let g:DoxygenToolkit_paramTag_pre          = "@param  "
let g:DoxygenToolkit_returnTag             = "@return  "
let g:DoxygenToolkit_maxFunctionProtoLines = 30
"let g:DoxygenToolkit_blockHeader="-------------------------------------------------------------------------"
"let g:DoxygenToolkit_blockFooter="-------------------------------------------------------------------------"
map <leader>da :DoxAuthor<CR>
map <leader>df :Dox<CR>
map <leader>db :DoxBlock<CR>

"-------------------------------------------------------------------------
" plugin - NeoComplCache.vim 
" 自动补全插件
"-------------------------------------------------------------------------
let g:AutoComplPop_NotEnableAtStartup         = 1
let g:NeoComplCache_EnableAtStartup           = 1
let g:NeoComplCache_SmartCase                 = 1
let g:NeoComplCache_TagsAutoUpdate            = 1
let g:NeoComplCache_EnableInfo                = 1
let g:NeoComplCache_EnableCamelCaseCompletion = 1
let g:NeoComplCache_MinSyntaxLength           = 3
let g:NeoComplCache_EnableSkipCompletion      = 1
let g:NeoComplCache_SkipInputTime             = '0.5'
let g:NeoComplCache_SnippetsDir               = $VIMFILES.'/snippets'
" <TAB> completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"" snippets expand key
" imap <silent> <C-e> <Plug>(neocomplcache_snippets_expand)
" smap <silent> <C-e> <Plug>(neocomplcache_snippets_expand)
"-------------------------------------------------------------------------

"-------------------------------------------------------------------------
" plugin - omnicppcomplete.vim 
" 自动补全插件
"-------------------------------------------------------------------------
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp,*.c set omnifunc=omni#cpp#complete#Main
"autocmd FileType cpp set omnifunc=cppcomplete#CompleteCPP
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>:TlistUpdate<CR>
"imap <F12> <ESC> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>:TlistUpdate<CR>   
"
" 以下命令在终端运行生成tags文件，并放在～/.vim/tags/目录下。然后，设置～/.vimrc文件。
" 利用以下命令生成/usr/include目录下文件的tags文件
"  cd /usr/include 
"  ctags -R --c-kinds=+l+x+p --fields=+iaSl --extra=+q  -I __THROW,__nonnull -f ~/.vim/tags/sys.tags
" 
" 生成c++库文件的tags文件,可以下载c++库文件，或者使用/usr/include/c++/4.8目录文件，然后运行以下命令
" cd /usr/include/c++/4.8
" ctags -R --c++-kinds=+l+x+p --fields=+iaSl --extra=+q
" --language-force=c++ -f ~/.vim/tags/stdcpp.tags
" 以上说明参考：https://github.com/yangyangwithgnu/use_vim_as_ide#5.4.1
"
"set nocp
set omnifunc                    =syntaxcomplete#Complete
set completeopt                 =menu,menuone	"关掉智能补全时的预览窗口
let OmniCpp_MayComlpeteDot      = 1 			"autocomplete with .
let OmniCpp_MayCompleteArrow    = 1 			" autocomplete with ->
let OmniCpp_MayCompleteScope    = 1 			" autocomplete with ::
let OmniCpp_SelectFirstItem     = 2 			" select first item (but don't insert)
let OmniCpp_NamespaceSearch     = 1 			" search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 			" show function prototype in popup window
let OmniCpp_GlobalScopeSearch   = 1 			" enable the global scope search
let OmniCpp_DisplayMode         = 1 			" Class scope completion mode: always show all members
let OmniCpp_DefaultNamespaces   = ["std","_GLIBCXX_STD"]
let OmniCpp_ShowScopeInAbbr     = 1 			" show scope in abbreviation and remove the last column
let OmniCpp_ShowAccess          = 1 
au  CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set tags+=~/.vim/tags/stdcpp.tags
set tags+=~/.vim/tags/sys.tags
"-------------------------------------------------------------------------

"-------------------------------------------------------------------------
" plugin - bash-support.vim 
"-------------------------------------------------------------------------
let g:BASH_AuthorName = 'H.M.Yang'
let g:BASH_Email      = 'hmyang07@gmail.com'
let g:BASH_Company    = ' '
"-------------------------------------------------------------------------

"-------------------------------------------------------------------------
" plugin - man.vim 
" 采用vim自带的man.vim 
"-------------------------------------------------------------------------
":source ~/.vim/ftplugin/man.vim 
source /usr/share/vim/vim74/ftplugin/man.vim
"-------------------------------------------------------------------------

"-------------------------------------------------------------------------
" plugin - powerline.vim 
" 设置状态栏主题
"-------------------------------------------------------------------------
set showcmd 						" 显示命令
set guifont=PowerlineSymbols\ for\ Powerline
set t_Co=256
"let g:Powerline_symblos = 'fancy'
let g:Powerline_symblos = 'unicode'
"-------------------------------------------------------------------------

"-------------------------------------------------------------------------
" plugin - taglist.vim 
" 查看函数列表等
"-------------------------------------------------------------------------
set autochdir
"TagList(ctags)
"------------------------------------------------------------------
nnoremap <silent><F4> :TlistToggle<CR>
let Tlist_Show_One_File        = 1		 " 不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow      = 1       " 如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window     = 1		 " 在右侧窗口中显示taglist窗口
let Tlist_File_Fold_Auto_Close = 1 	     " 自动折叠当前非编辑文件的方法列表
let Tlist_Auto_Open			   = 0
let Tlist_Auto_Update		   = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Enable_Fold_Column   = 0
let Tlist_Process_File_Always  = 1
let Tlist_Display_Prototype    = 0
let Tlist_Compact_Format       = 1
"-------------------------------------------------------------------------

"-------------------------------------------------------------------------
" plugin - vimwiki.vim 
" personal wiki 
"-------------------------------------------------------------------------
"let g:vimwiki_list = [{'path': '~/vimwiki/',
"\'path_html': '~/vimwiki/vimwiki_html',
"\'html_header': '',}]

"-------------------------------------------------------------------------
" plugin - c.vim 
" C/C++ IDF for vim 
"-------------------------------------------------------------------------
" enable additional tools: doxygen tools
let g:C_UseTool_doxygen = 'yes'

"-------------------------------------------------------------------------
" plugin - YouCompleteMe.vim 
" a code-completion engine for vim
"-------------------------------------------------------------------------

let g:ycm_global_ycm_extra_conf = '~/.vim/templates/ycm/.ycm_extra_conf.py'
" 不显示开启vim时检查ycm_extra_conf文件的信息  
let g:ycm_confirm_extra_conf=0

" 开启基于tag的补全，可以在这之后添加需要的标签路径  
let g:ycm_collect_identifiers_from_tags_files=1

"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

" 输入第2个字符开始补全
let g:ycm_min_num_of_chars_for_completion=2

" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0

" 开启语义补全
let g:ycm_seed_identifiers_with_syntax=1	

"在注释输入中也能补全
let g:ycm_complete_in_comments = 1

"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1

" 设置在下面几种格式的文件上屏蔽ycm
let g:ycm_filetype_blacklist = {
			\ 'tagbar' : 1,
			\ 'nerdtree' : 1,
			\ 'qf' : 1,
			\ 'notes' : 1,
			\ 'markdown' : 1,
			\ 'unite' : 1,
			\ 'text' : 1,
			\ 'vimwiki' : 1,
			\ 'gitcommit' : 1,
			\}
" youcompleteme  默认tab  s-tab 和 ultisnips 冲突
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
" 修改对C函数的补全快捷键，默认是CTRL + space，修改为ALT +;
" let g:ycm_key_invoke_completion = '<M-;>'

" 跳转到定义处
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
" nnoremap <leader>lo :lopen<CR>	"open locationlist
" nnoremap <leader>lc :lclose<CR>	"close locationlist
inoremap <leader><leader> <C-x><C-o>"

"-------------------------------------------------------------------------
" plugin - syntastic.vim 
" Syntax checking hacks for vim
"-------------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" 
let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"-------------------------------------------------------------------------
" plugin - ctrlp.vim 
" Fuzzy file,buffer,mru,tag,etc finder.
"-------------------------------------------------------------------------
"let g:ctrlp_map = '<leader>p'
let g:ctrlp_map = '<c-p>'
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
"-----------------------------------------------------------------
" plugin - vim-flavored-markdown.vim 
" Markdown syntax highlight using GitHub Flavored Markdown
"-----------------------------------------------------------------
augroup markdown
	au!
	au BufNewFile,BufRead *.md,*.markdown, setlocal filetype=ghmarkdown
augroup END
"-----------------------------------------------------------------
" plugin - pydiction
" Python Tab-completion for VIM
"-----------------------------------------------------------------
let g:pydiction_location    = '~/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 8
