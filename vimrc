" =============================================================================
" =============================================================================
" -------------------            _                         --------------------
" -------------------      _   _(_)_ __ ___  _ __ ___      --------------------
" -------------------     \ \ / / | '_ ` _ \| '__/ __|     --------------------
" -------------------      \ V /| | | | | | | | | (__      --------------------                    
" -------------------     (_)_/ |_|_| |_| |_|_|  \___|     --------------------
" -------------------                                      -------------------- 
" =============================================================================
" =============================================================================

" =============================================================================
" URL: https://github.com/Badacadabra/dotvim.git
" Author: Baptiste Vannesson
" Description: Vim as a powerful Web IDE! 
" License: MIT
" ============================================================================= 

" Core settings  {{{1
set nocompatible " Vim/Vi compatibility
set lazyredraw " do not redraw while executing macros (performance issue)
set hidden " better window management
set backupdir=~/.vim/backup " keep backup files ('~') in a dedicated directory
set directory=~/.vim/swap " keep swap files ('swp', 'swo', 'swn', ...) in a dedicated directory
set clipboard=unnamedplus " allow full clipboard
set path=.,/usr/include,,** " useful for advanced searching in a project
set suffixesadd=.js,.php " useful to find interesting files with 'gf'

" =============================================================================

" Plugins management with Vundle {{{1
source ~/.vim/config/vundle.vim

" =============================================================================

" Plugins configuration {{{1
source ~/.vim/config/plugins.vim

" =============================================================================

" GUI {{{1
set guioptions-=e " disable GUI options (like graphical tabs)
set background=dark " dark background
if has('gui_running')
    " GVim
    set guifont=Hack
    colorscheme gotham
else
    " Terminal Vim
    colorscheme Tomorrow-Night
endif

" =============================================================================

" Formatting {{{1
set encoding=utf8 " text encoding
set number " display line numbers
set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in TAB when editing
set expandtab " convert TABs to spaces
set shiftwidth=4 " number of spaces for indent operations
set autoindent " keep the current indentation
set backspace=indent,eol,start " usual behavior for backspace in insert mode
set foldmethod=marker " folding using markers
set colorcolumn=121 " line length limit
set pastetoggle=<F10> " toggle between 'paste' and 'nopaste'
syntax on " syntax highlighting
filetype plugin on " activate filetype plugin
filetype indent on " load filetype=specific indent files
let g:vim_json_syntax_conceal = 0 " display quotes in JSON files
highlight ColorColumn ctermbg=NONE ctermfg=red " highlight the first character that exceeds the line length limit
autocmd BufEnter * :syntax sync fromstart " syntax highlighting for the whole file

" =============================================================================

" Editing {{{1
set omnifunc=syntaxcomplete#Complete " enable omnicompletion
autocmd CompleteDone * pclose " close preview popup after complete
set showmatch " highlight matching [{()}]
set showcmd " display the entered command
set cursorline " highlight the current line
set ruler " display the cursor position in the file
set nostartofline " do not go systematically on the first character of the line
set confirm " get a confirmation dialog instead of an error for a command
set mouse=a " enable mouse for all modes

" =============================================================================

" Searching {{{1
set ignorecase " ignore case when searching
set smartcase " enhance a search with ignorecase
set incsearch " incremental searching (realtime highlighting)
set hlsearch " highlight search results
set wildmenu " visual autocomplete for command menu

" =============================================================================

" Key mappings {{{1
source ~/.vim/config/mappings.vim
