let mapleader = "-"
" coc configuration
let g:coc_global_extensions = ['coc-tsserver','coc-html','coc-css', 'coc-json',
            \ 'coc-java','coc-python','coc-flutter', 'coc-marketplace',
            \ 'coc-emmet','coc-snippets','coc-xml','coc-yaml', 'coc-yank',
            \ 'coc-markdownlint','coc-highlight']

" if hidden is not set, TextEdit might fail.
set hidden
set hlsearch
set incsearch
set ic

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
" set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>fm  <Plug>(coc-format-selected)
nmap <leader>fm  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>"

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Multiple commands
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }

" Loaded when clojure file is opened
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Multiple file types
Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme'] }

" On-demand loading on both conditions
Plug 'junegunn/vader.vim',  { 'on': 'Vader', 'for': 'vader' }

" Code to execute when the plugin is lazily loaded on demand
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
autocmd! User goyo.vim echom 'Goyo is now loaded!'

let g:fzf_install = 'yes | ./install'
Plug 'junegunn/fzf', { 'do': g:fzf_install }


" coc plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'voldikss/vim-floaterm'

" 中文输入法
Plug 'vim-scripts/fcitx.vim'

" Initialize plugin system
call plug#end()
"}}}

" customer configrationn{{{
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
" set cmdheight=1
set lazyredraw

" Add a bit extra margin to the left
set foldcolumn=1

runtime colors/morning.vim


" nnoremap <F3> :Autoformat<CR>
nnoremap S :source $MYVIMRC<CR>
inoremap jk <esc>


map <F1> <Nop>
nnoremap s <Nop>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
nnoremap H <C-W>h
nnoremap L <C-W>l
map <C-h> :tabp<CR>
map <C-l> :tabn<CR>
nnoremap tn :tabnew 
nnoremap <F2> :CocCommand explorer<CR>
map <leader>c :CocCommand<CR>
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-K> <C-U>
" nnoremap <space> za



" vundle 环境设置
"filetype off
syntax enable
syntax on



" hybrid temp table to be clean
iabbrev torder tmp_meta_order_query
iabbrev tgrade tmp_meta_member_grade
iabbrev tmobile (CASE WHEN c.mobile_modified IS NOT NULL AND TRIM(c.mobile_modified) <> '' THEN c.mobile_modified ELSE c.mobile END) AS


" Vimscript file settings ---------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
