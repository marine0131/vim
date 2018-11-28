set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'haya14busa/incsearch.vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'junegunn/goyo.vim' "input :Goyo enter read mode
Plugin 'Raimondi/delimitMate' "symbol auto complete
Plugin 'honza/vim-snippets' "set code block
Plugin 'tomasr/molokai'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'python-mode/python-mode'
Plugin 'Valloric/YouCompleteMe'
" Plugin 'Shougo/deoplete.nvim'
Plugin 'neomake/neomake' "spell check

" All of your Plugins must be added before the following line
call vundle#end()            " required
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
"
"spaces&indent
set tabstop=4 "number of visual sapces per TAB"
set softtabstop=4 "number of spaces in tab when editing"
set shiftwidth=4
set expandtab "tab are spaces"
set autoindent
" set backup
set smartindent

" UI config 
" set textwidth=80
set colorcolumn=80
set number
set showcmd "show command in bottom bar
set cursorline "highlight curr line
set wildmenu "visual autocomplete for command menu
set lazyredraw "redraw only we need to
set showmatch

" Searching
set incsearch
set hlsearch
" turn off search highlight when press space <leather> mean \
nnoremap <leader><space> :nohlsearch<CR>  
" Folding
set foldenable
set foldlevelstart=99
" space open/closes fold
nnoremap <space> za 
set foldmethod=indent "fold based on indent level

" Movement
nnoremap j gj
nnoremap k gk

" easy motion
let g:EasyMotion_leader_key = 'W'

"highlight last inserted text
nnoremap gV `[v`] 

"Nerdtree
nnoremap <F2> :NERDTreeToggle<CR>

"Complete
"set completeopt-=preview

set nocompatible
set title
set modeline
set ls=2
"Color
"support 256 colors in Lion terminal 
set t_Co=256
hi Comment term=none ctermfg=Magenta guifg=Magenta
hi IncSearch ctermfg=blue ctermbg=white
set scrolloff=3
" colorscheme
let g:molokai_original = 1
"let g:rehash256 = 1
colorscheme molokai

" pymode 
" let g:pymode_options_max_line_length=120

" ycm
let g:ycm_confirm_extra_conf=0
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py' 
