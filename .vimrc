silent! py3 pass
" Inspiration: https://dougblack.io/words/a-good-vimrc.html

" Init {{{
" Needed to make vim play nicely with fish...

if &shell =~# 'fish$'
    set shell=sh
endif
" }}}
" Vim Plug {{{
call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'derekwyatt/vim-scala'
Plug 'elixir-editors/vim-elixir'
Plug 'fatih/vim-go'
Plug 'janko-m/vim-test'
Plug 'keith/swift.vim'
Plug 'kien/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'moll/vim-node'
" Plug 'scrooloose/syntastic'
Plug 'simnalamburt/vim-mundo'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline-themes'
Plug 'vimwiki/vimwiki'
Plug 'sjl/badwolf'
Plug 'scrooloose/nerdtree'
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dag/vim-fish'
Plug 'elmcast/elm-vim'
Plug 'valloric/python-indent'
" Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()
" }}}
" Misc {{{
set backspace=indent,eol,start
let g:vimwiki_list = [{'path': '~/.wiki/'}]
set clipboard=unnamed

" Hybrid relative line numbers
" https://jeffkreeftmeijer.com/vim-number/
set number relativenumber

set expandtab       " tabs are spaces

map <C-n> :NERDTreeToggle<CR>
" let NERDTreeMapActivateNode='<CR>'
let g:NERDTreeDirArrows=0

autocmd FileType vim let b:vcm_tab_complete = 'vim'

" Matching parens
" DoMatchParen

" to change python version used by ycm
" let g:ycm_python_binary_path = '/usr/bin/python'
" enter to accept completion
" let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']

" coc
let g:coc_node_path = '~/.nvm/versions/node/v16.0.0/bin/node'

noremap K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open new spilts to the right and below instead
set splitbelow
set splitright

" Auto complete in console
set wildmode=longest:list,full

" let g:ycm_autoclose_preview_window_after_completion=1
" Set comment style
autocmd FileType c,cpp,java setl cms=//%s
" }}}
" Spaces & Tabs {{{
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set modelines=1
filetype indent on
" filetype indent off
filetype plugin on
set autoindent
" }}}
" UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set nocursorline        " highlight current line
set wildmenu
set lazyredraw
set showmatch           " higlight matching parenthesis
set fillchars+=vert:┃
set guifont=Menlo:h14
" }}}
" Searching {{{
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
" }}}
" Folding {{{
"=== folding ===
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
nnoremap , za
set foldlevelstart=10   " start with fold level of 1
" }}}
" Line Shortcuts {{{
nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]
" }}}
" Leader Shzortcuts {{{
let mapleader=","
nnoremap <leader>m :silent make\|redraw!\|cw<CR>
nnoremap <leader>h :A<CR>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>et :exec ":vsp /Users/dblack/notes/vim/" . strftime('%m-%d-%y') . ".md"<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>l :call <SID>ToggleNumber()<CR>
nnoremap <leader><space> :noh<CR>
nnoremap <leader>s :mksession<CR>
nnoremap <leader>a :Ag 
nnoremap <leader>c :SyntasticCheck<CR>:Errors<CR>
nnoremap <leader>1 :set number!<CR>
nnoremap <leader>d :GoDoc 
nnoremap <leader>t :TestFile<CR>
nnoremap <leader>r :call <SID>RunFile()<CR>
nnoremap <leader>b :call <SID>BuildFile()<CR>
vnoremap <leader>y "+y
noremap <leader>s :update<CR>
" }}}
" airline {{{
set laststatus=2
let g:airline_theme = 'zenburn'
let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_sep = ''
" }}}
" Colors {{{
syntax enable           " enable syntax processing
colorscheme badwolf
set termguicolors
" }}}
" CtrlP {{{
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = '\vbuild/|dist/|venv/|target/|\.(o|swp|pyc|egg)$'
" }}}
" Syntastic {{{
" let g:syntastic_python_flake8_args='--ignore=E501'
" let g:syntastic_ignore_files = ['.java$']
" let g:syntastic_python_python_exec = 'python3'

" cpp enhanced https://github.com/octol/vim-cpp-enhanced-highlight
" let g:cpp_class_scope_highlight = 1
" let g:cpp_member_variable_highlight = 1
" }}}
" AutoGroups {{{
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md,*.rb :call <SID>StripTrailingWhitespaces()
    autocmd BufEnter *.cls setlocal filetype=java
    autocmd BufEnter *.cpp,*.cc,*.h setlocal filetype=cpp
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
    autocmd BufEnter *.py setlocal tabstop=4
    autocmd BufEnter *.py setlocal softtabstop=4
    autocmd BufEnter *.py setlocal shiftwidth=4
    autocmd BufEnter *.py setlocal textwidth=79
    autocmd BufEnter *.py setlocal expandtab
    autocmd BufEnter *.py setlocal autoindent
    autocmd BufEnter *.hs setlocal autoindent
    autocmd BufEnter *.md setlocal ft=markdown
    autocmd BufEnter *.go setlocal noexpandtab
    autocmd BufEnter *.avsc setlocal ft=json
    autocmd BufEnter *.frag,*.vert setlocal ft=c
augroup END
" }}}
" Testing {{{
let test#strategy = 'neovim'
let test#python#runner = 'nose'
" }}}
" Backups {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}
" Custom Functions {{{
function! <SID>ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunc

function! <SID>CleanFile()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %!git stripspace
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunc

function! <SID>RunFile()
    let ext = expand("%:e")
    if(ext == "go") 
        :GoRun
    endif
endfunc

function! <SID>BuildFile()
    let ext = expand("%:e")
    if(ext == "go") 
        :GoBuild
    endif
endfunc
" }}}
" Syntax highlighting {{{
autocmd BufNewFile,BufRead *.fish set syntax=fish
" }}}

" Maps <CR> in insert mode to input CTRL-Y when popup menu is visible.
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

" nedanstående rad måste vara sist för att lokal code folding ska fungera.
" vim:foldmethod=marker:foldlevel=0
