" =============================================================================
"        _                    
"  _   _(_)_ __ ___  _ __ ___ 
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__ 
" (_)_/ |_|_| |_| |_|_|  \___|
"
" =============================================================================
" URL: https://github.com/Badacadabra/dotvim.git
" Author: Baptiste Vannesson
" Description: Vim as a powerful Web IDE! 
" License: MIT
" ============================================================================= 

" Plugins {{{1

" Management {{{2
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/AutoTag'
Plugin 'spf13/PIV'
Plugin 'pangloss/vim-javascript'
Plugin 'kien/ctrlp.vim'
Plugin 'danro/rename.vim'
Plugin 'elzr/vim-json'
Plugin 'vim-scripts/dbext.vim'
Plugin 'juneedahamed/svnj.vim'
Plugin 'tpope/vim-markdown'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'edsono/vim-matchit'
Plugin 'mattn/emmet-vim'
Plugin 'gcmt/taboo.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'KabbAmine/gulp-vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'sjl/gundo.vim'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-obsession'
Plugin 'vim-scripts/HTML-AutoCloseTag'
Plugin 'SirVer/ultisnips'
Plugin 'vim-scripts/vim-php-namespace'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-scripts/vim-addon-mw-utils'
Plugin 'tpope/vim-surround'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'docteurklein/vim-symfony'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'qbbr/vim-twig'
Plugin 'scrooloose/nerdtree'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'tobyS/vmustache'
Plugin 'tyru/open-browser.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'docteurklein/php-getter-setter.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'c9s/phpunit.vim'
Plugin 'airblade/vim-gitgutter'

call vundle#end()

" Configuration {{{2

" Taboo {{{3
set guioptions==e
set sessionoptions+=tabpages,globals

" Syntastic {{{3
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_html_checkers = ['tidy', 'w3']
let g:syntastic_css_checkers = ['csslint', 'prettycss']
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_php_checkers=['php', 'phpcs']
let g:syntastic_php_phpcs_args='--standard=PSR2 -n'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0 " disable check on save/exit
let g:ycm_show_diagnostics_ui = 0 " use Syntastic apart from YouCompleteMe

" UltiSnips {{{3
let g:UltiSnipsExpandTrigger="<c-j>" " expand the snippet under the cursor in a YouCompleteMe popup
let g:UltiSnipsJumpForwardTrigger="<c-j>" " go to the next code fragment in the snippet
let g:UltiSnipsJumpBackwardTrigger="<c-k>" " go the the previous fragment in the snippet

" Airline {{{3
let g:airline_powerline_fonts = 1
let g:airline_theme = 'term'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

set laststatus=2

" Symfony {{{3
let g:symfony_app_console_caller= "php"
let g:symfony_app_console_path= "bin/console"

" PHP namespaces {{{3
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

" =============================================================================

" Core settings  {{{1
set nocompatible " Vim/Vi compatibility
set lazyredraw " do not redraw while executing macros (performance issue)
set hidden " better window management
set backupdir=~/.vim/backup " keep backup files ('~') in a dedicated directory
set directory=~/.vim/swap " keep swap files ('swp', 'swo', 'swn', ...) in a dedicated directory

" =============================================================================

" GUI {{{1
colorscheme Tomorrow-Night-Bright " dark theme

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

" <leader> key definition
let mapleader = "," " easier to use than \

" Global mappings {{{2
" -----------------------------------------------------------------------------

" display the file system tree
map <S-n> :NERDTreeTabsToggle<CR>
" display the taglist tree
map <C-l> :TlistToggle<CR>
" create new tab
map <C-t> :tabnew<CR>
" go to the previous tab
map <C-Left> :tabprevious<CR>
" go to the next tab
map <C-Right> :tabnext<CR>
" launch Symfony console
map <leader>f :execute ":!"g:symfony_enable_shell_cmd<CR>

" Mappings in normal mode {{{2
" -----------------------------------------------------------------------------

" yank until EOL (y$) instead of the entire line (yy)
nnoremap Y y$
" hide highlighted search results
nnoremap <C-h> :nohl<CR><C-h>
" show syntax checking information
nnoremap <C-i> :SyntasticInfo<CR>
" launch syntax checking
nnoremap <C-c> :SyntasticCheck<CR>
" display the undo tree
nnoremap <C-u> :GundoToggle<CR>

" Mappings in insert mode {{{2
" -----------------------------------------------------------------------------

" quit insert mode and go back to normal mode
inoremap ,; <Esc>
" select all
inoremap <C-a> <Esc>ggVG
" delete current line
inoremap <C-k> <Esc>ddi
" indent current line
inoremap <C-i> <Esc>>i
" unindent current line
inoremap <C-u> <Esc><i
