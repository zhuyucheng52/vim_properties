" 语法高亮
syntax on

" 不需要备份
set nobackup
set nowb
set noswapfile

" 高亮显示当前行
set cursorline
set scrolloff=3

" tab缩进
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

" c文件自动缩进
" set cindent

" 自动对齐
" set autoindent

" 智能缩进
set smartindent

" 高亮查找匹配
set hlsearch
set incsearch
set nowrapscan

" 显示匹配
set showmatch

" 浅色显示当前行
" set cursorline

" 编码设置
set encoding=utf-8

" 不折行
set nowrap
set nu
set relativenumber

set fileencodings=ucs-bom,utf-8,cp936,gb2312,gb18030,big5
set encoding=utf-8

set guifont=Courier\ New:h16

set backspace=1

set wildmenu
set cmdheight=1

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Add a bit extra margin to the left
set foldcolumn=1

runtime colors/desert.vim



" vundle 环境设置
"filetype off
syntax enable
syntax on


set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" :PluginInstall
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" Plugin 'chiel92/vim-autoformat'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin 'Raimondi/delimitMate'
" Plugin 'dense-analysis/ale'
Plugin 'mattn/emmet-vim'
" Plugin 'Chiel92/vim-autoformat'
" Plugin 'axiaoxin/vim-json-line-format'
Plugin 'benmills/vimux'
Plugin 'terryma/vim-multiple-cursors'
" Plugin 'kien/ctrlp.vim'
Plugin 'kshenoy/vim-signature'

" 插件列表结束
call vundle#end()
filetype plugin indent on

" conf
" set t_Co=256
set background=dark
colorscheme torte

" NERDTree config
nnoremap <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
" autocmd vimenter * NERDTree " auto open NERDTree

let g:vim_markdown_folding_disabled = 1

" let g:airline_powerline_fonts = 1  
" let g:airline#extensions#tabline#left_sep = ' '

" nnoremap <F3> :Autoformat<CR>
nnoremap S :source $MYVIMRC<CR>
inoremap jk <esc>


map <F1> <Nop>
nnoremap s <Nop>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
" map <C-h> <C-W>h
" map <C-l> <C-W>l
map <C-h> :tabp<CR>
map <C-l> :tabn<CR>
nnoremap tn :tabnew 

cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-K> <C-U>
nnoremap <space> za


" let g:autoformat_verbosemode=1 "开启详细模式便于查错
" autocmd BufWrite *.sql,*.c,*.py,*.java,*.js :Autoformat "设置发生保存事件时执行格式化

"let g:autoformat_autoindent = 0
"let g:autoformat_retab = 0
"let g:autoformat_remove_trailing_spaces = 0
"autocmd FileType vim,tex let b:autoformat_autoindent=0
"gg=G :retab :RemoveTrailingSpaces

let mapleader = "-"
nnoremap <leader>ev :tabnew $MYVIMRC<cr>

" hybrid temp table to be clean
iabbrev torder tmp_meta_order_query
iabbrev tgrade tmp_meta_member_grade

" nnoremap <leader>" ea"<esc>hbi"<esc>
" nnoremap <leader>' ea'<esc>hbi'<esc>

" nnoremap <leader>d dd
" nnoremap <buffer> <leader>x dd




" Vimscript file settings ---------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
