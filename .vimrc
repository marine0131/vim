set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
call plug#begin('~/.vim/plugged')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plug 'haya14busa/incsearch.vim' "search and highlight
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/goyo.vim' "input :Goyo enter read mode
Plug 'Raimondi/delimitMate' "symbol auto complete
Plug 'honza/vim-snippets' "set code block
Plug 'tomasr/molokai'
Plug 'scrooloose/nerdtree'
" Plug 'python-mode/python-mode'
Plug 'rdnetto/YCM-Generator' "generate ycm config file automatically
Plug 'Valloric/YouCompleteMe'
Plug 'w0rp/ale' "spell check

" All of your Plugins must be added before the following line
call plug#end()            " required
filetype indent plugin on    " required
" To ignore plugin indent changes, instead use:
syntax on
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set ls=2 "always show status line
set title
set modeline
set tabstop=4 "number of visual sapces per TAB"
set softtabstop=4 "number of spaces in tab when editing"
set shiftwidth=4
set expandtab "tab are spaces"
set autoindent
" set backup
set smartindent
set backspace=2

""""""""""""""""""""""
"UI config 
""""""""""""""""""""""
" set textwidth=80
set colorcolumn=80
set number
set showcmd "show command in bottom bar
set cursorline "highlight curr line
set wildmenu "visual autocomplete for command menu
set lazyredraw "redraw only we need to
set showmatch

""""""""""""""""""""""
" Searching
""""""""""""""""""""""
set incsearch
set hlsearch
" turn off search highlight when press \ + space
nnoremap <leader><space> :nohlsearch<CR>
" highlight the search while curser is still on current word
nnoremap * :<C-u>let @/ = expand('<cword>')<cr>

""""""""""""""""""""""
" Folding
""""""""""""""""""""""
set foldenable
set foldlevelstart=99
" space open/closes fold
nnoremap <space> za 
set foldmethod=indent "fold based on indent level

""""""""""""""""""""""
"Nerdtree
""""""""""""""""""""""
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <C-Right> :tabn<CR>
nnoremap <C-Left> :tabp<CR>
nnoremap <C-n> :tabnew<CR>


""""""""""""""""""""""
"Color
""""""""""""""""""""""
"support 256 colors in Lion terminal 
set t_Co=256
hi Comment term=none ctermfg=Magenta guifg=Magenta
hi IncSearch ctermfg=blue ctermbg=white
set scrolloff=3

""""""""""""""""""""""
" colorscheme
""""""""""""""""""""""
let g:molokai_original = 1
"let g:rehash256 = 1
colorscheme molokai

""""""""""""""""""""""
" pymode 
""""""""""""""""""""""
" let g:pymode_options_max_line_length=120

""""""""""""""""""""""
" ycm
""""""""""""""""""""""
let g:ycm_use_clangd = 0
" let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'
let g:ycm_confirm_extra_conf=0
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py' 


""""""""""""""""""""""
" ale spell check
""""""""""""""""""""""
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_fix_on_save=1 "auto fix on save
let g:ale_fixers={'python':['prettier'],'c':['gcc'],'cpp':['gcc']}
let g:ale_linters={'python':['pylint'],'c':['gcc'],'cpp':['gcc']}

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''


""""""""""""""""""""""
    "Quickly Run
""""""""""""""""""""""
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
        exec "w"
    if &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!time python2.7 %"
    endif
endfunc
