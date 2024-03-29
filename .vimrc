"操作系统识别
""参考网站http://vimhelp.appspot.com/eval.txt.html#feature-list，进入后查询macunix
if has("unix")
	if has("macunix")
		set guifont=Droid\ Sans\ Mono\ for\ Powerline:h12
	else
		set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 10
	endif 
endif

set shell=zsh

set nocompatible              " be iMproved, required
filetype on                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"源代码TAG列表
Plugin 'taglist.vim'
	let Tlist_Show_One_File=1
	let Tlist_Exit_OnlyWindow=1
	nnoremap <silent> <F8> :TlistToggle<CR>
Plugin 'scrooloose/nerdtree'
	let g:NERDTreeDirArrows = 1
	let g:NERDTreeDirArrowExpandable = '▸'
	let g:NERDTreeDirArrowCollapsible = '▾'
	nnoremap <silent> <F8> :NERDTreeToggle<CR>
"语法检查
Plugin 'scrooloose/syntastic'
	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*
	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0
Plugin 'bling/vim-airline'
	let g:airline_powerline_fonts = 1
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#left_sep = ' '
	let g:airline#extensions#tabline#left_alt_sep = '|'
Plugin 'DoxygenToolkit.vim'
	let g:DoxygenToolkit_authorName="Y.Tian"
Plugin 'a.vim'
	nnoremap <silent> <F12> :A<CR>
Plugin 'nathanaelkane/vim-indent-guides'
	let g:indent_guides_auto_colors = 1
Plugin 'bufexplorer.zip'
Plugin 'easymotion/vim-easymotion'
Plugin 'Gist.vim'
Plugin 'c.vim'
Plugin 'neocomplcache'
Plugin 'ervandew/supertab'
Plugin 'yegappan/grep'
Plugin 'ctrlp.vim'
Plugin 'wmgraphviz'
call vundle#end()            " required
filetype plugin indent on    " required
"------------------------------------------------
" 基本信息的设置
"------------------------------------------------
set helplang=cn				"设置语言
set tabstop=4				"设置tab键的宽度
set shiftwidth=4			"设置缩进的空格数为4
set autoindent				"设置自动缩进：即每行的缩进值与上一行相等
set cindent					"设置使用C/C++语言的自动缩进方式
set ai!						"设置自动缩进
syntax enable				"打开语法高亮显示功能
syntax on					"打开语法高亮显示功能
colorscheme desert			"系统配色方案
filetype plugin indent on	 "自动补全
set completeopt=longest,menu "自动补全
set linebreak				"整词换行
set autochdir				"自动设置目录为正在编辑的文件所在的目录
set nu						"显示行号
set showmatch 				"设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set foldmethod=syntax		"启用代码折叠
set nocompatible 
"set foldlevel=100			"启动vim时不要自动折叠代码
"set wrap					"自动换行
"set nowrap					"不自动换行
"set noautoindent			"取消自动缩进
"------------------------------------------------
" 状态栏相关的设置
"------------------------------------------------
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
set laststatus=2    			"始终显示状态行
set ruler          			"在编辑过程中，在右下角显示光标位置的状态行
set hlsearch 				"高亮显示搜索结果
set incsearch				"查询时非常方便，如要查找book单词，当输入到/b时，会自动找到第一个b开头的单词，当输入到bo时，会自动找到第一个bo开头的\单词，依次类推，进行查找时，使用此设置会快速找到答案，当你\找要匹配的单词时，别忘记回车
sythnmaster : SMPWSS-93C6HHA8-7KY9-EYT4-GHQL-5YFE-BF8B83G4
