" vundle ��������
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle ����Ĳ���б����λ�� vundle#begin() �� vundle#end() ֮��
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'Lokaltog/vim-powerline'
" Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'derekwyatt/vim-fswitch'
" Plugin 'kshenoy/vim-signature'
"" Plugin 'vim-scripts/BOOKMARKS��Mark-and-Highlight-Full-Lines'
" Plugin 'majutsushi/tagbar'
" Plugin 'vim-scripts/indexer.tar.gz'
" Plugin 'vim-scripts/DfrankUtil'
" Plugin 'vim-scripts/vimprj'
" Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
" Plugin 'scrooloose/nerdcommenter'
" Plugin 'vim-scripts/DrawIt'
"" Plugin 'SirVer/ultisnips'
"" Plugin 'Valloric/YouCompleteMe'
" Plugin 'derekwyatt/vim-protodef'
" Plugin 'scrooloose/nerdtree'
" Plugin 'fholgado/minibufexpl.vim'
" Plugin 'gcmt/wildfire.vim'
" Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion'
" Plugin 'suan/vim-instant-markdown'
Plugin 'lilydjwg/fcitx.vim'
" ����б����
call vundle#end()
filetype plugin indent on




" ������ʾ״̬��
set laststatus=2
" ��ʾ��굱ǰλ��
set ruler
" �����к���ʾ
set number
" ������ʾ��ǰ��/��
set cursorline
set cursorcolumn
" ������ʾ�������
set hlsearch
" ���� gvim ��ʾ����
set guifont=Courier_New:h16:cANSI
colorscheme molokai 
" colorscheme desert
" ��ֹ����
set nowrap
" ����״̬��������
" let g:Powerline_colorscheme='solarized256'
" �����﷨��������
syntax enable
" ������ָ���﷨������ɫ�����滻Ĭ�Ϸ���
syntax on
" �����������﷨���д����۵�
set foldmethod=indent
set foldmethod=syntax
" ���� vim ʱ�ر��۵�����
set nofoldenable
" �� vim ������
let g:indent_guides_enable_on_vim_startup=1
" �ӵڶ��㿪ʼ���ӻ���ʾ����
let g:indent_guides_start_level=2
" ɫ����
let g:indent_guides_guide_size=1
" ��ݼ� i ��/���������ӻ�
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle
" ��ֹ�����˸
" set gcr=a:block-blinkon0
" ��ֹ��ʾ������
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" ��ֹ��ʾ�˵��͹�����
set guioptions-=m
set guioptions-=T
" ����״̬��������
let g:Powerline_colorscheme='solarized256'
 " ����Ӧ��ͬ���Ե��������� 
filetype indent on
 " ���Ʊ����չΪ�ո� 
set expandtab
 " ���ñ༭ʱ�Ʊ��ռ�ÿո��� 
set tabstop=4
 " ���ø�ʽ��ʱ�Ʊ��ռ�ÿո��� 
set shiftwidth=4
" �� vim �����������Ŀո���Ϊһ���Ʊ�� 
set softtabstop=4
set noswapfile
set clipboard=unnamed
