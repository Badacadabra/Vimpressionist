" ============================
" PLUGINS MANAGEMENT (VUNDLE)
" ============================

" Start Vundle {{{1
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins {{{1
Plugin 'VundleVim/Vundle.vim'

" ----------------------------
" Search & Autocomplete {{{2
" ----------------------------

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'Raimondi/delimitMate'
Plugin 'mattn/emmet-vim'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'vim-scripts/matchit.zip'

" ----------------------------
" Editing & Formatting {{{2
" ----------------------------

Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
Plugin 'Yggdroot/indentLine'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-scripts/SearchComplete'
"Plugin 'vim-scripts/ShowMarks'
Plugin 'danro/rename.vim'
Plugin 'gcmt/taboo.vim'
Plugin 'sjl/gundo.vim'
Plugin 'bronson/vim-trailing-whitespace'

" ----------------------------
" Web {{{2
" ----------------------------

" Web browsing {{{3
Plugin 'tyru/open-browser.vim'
Plugin 'yuratomo/w3m.vim'

" HTML/CSS {{{3
Plugin 'vim-scripts/HTML-AutoCloseTag'
Plugin 'gko/vim-coloresque'

" ----------------------------
" Programming environments {{{2
" ----------------------------

" JavaScript ..............{{{3

" Vanilla
Plugin 'pangloss/vim-javascript'
Plugin 'moll/vim-node'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'Quramy/vim-js-pretty-template'
Plugin 'jason0x43/vim-js-indent'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'elzr/vim-json'
Plugin 'tobyS/vmustache'

" CoffeeScript
Plugin 'kchmck/vim-coffee-script'

" TypeScript
Plugin 'leafgarland/typescript-vim'
Plugin 'mhartington/vim-typings'
Plugin 'Quramy/vim-dtsm'
Plugin 'Quramy/ng-tsserver'

" Tools
Plugin 'vim-scripts/npm.vim'
Plugin 'KabbAmine/gulp-vim'
Plugin 'mklabs/grunt.vim'
Plugin 'drichard/vim-brunch'

" PHP .....................{{{3

" Plugin 'stanangeloff/php.vim'
" Plugin 'spf13/PIV'
" Plugin 'c9s/phpunit.vim'
" Plugin 'docteurklein/php-getter-setter.vim'
" Plugin 'adoy/vim-php-refactoring-toolbox'
" Plugin 'vim-scripts/vim-php-namespace'
" Plugin 'qbbr/vim-symfony'
" Plugin 'voronkovich/ctrlp-symfony2.vim'
" Plugin 'noahfrederick/vim-composer'
" Plugin 'qbbr/vim-twig'

" Python ..................{{{3

" Plugin 'klen/python-mode'
" Plugin 'davidhalter/jedi-vim'
" Plugin 'nvie/vim-flake8'

" Ruby ....................{{{3

" Plugin 'vim-ruby/vim-ruby'
" Plugin 'tpope/vim-rails'
" Plugin 'tpope/vim-bundler'
" Plugin 'tpope/vim-endwise'
" Plugin 'tpope/vim-haml'
" Plugin 'slim-template/vim-slim'
" Plugin 'skalnik/vim-vroom'

" Perl ....................{{{3

" Plugin 'vim-perl/vim-perl'
" Plugin 'perl-support.vim'
" Plugin 'hotchpotch/perldoc-vim'
" Plugin 'c9s/perlomni.vim'

" C/C++ ...................{{{3

" Plugin 'Rip-Rip/clang_complete'
" Plugin 'vim-scripts/c.vim'
" Plugin 'vim-scripts/a.vim'

" Java ....................{{{3

" Plugin 'artur-shaik/vim-javacomplete2'
" Plugin 'tfnico/vim-gradle'
" Plugin 'mikelue/vim-maven-plugin'
" Plugin 'bpdp/vim-java'

" ----------------------------
" Databases {{{2
" ----------------------------

" SQL {{{3 
Plugin 'vim-scripts/dbext.vim'
Plugin 'vim-scripts/SQLComplete.vim'

" NoSQL {{{3
Plugin 'vim-scripts/nosql.vim'

" ----------------------------
" Version control {{{2
" ----------------------------

" Git {{{3
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
Plugin 'airblade/vim-gitgutter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-markdown'

" ----------------------------
" Miscellaneous {{{2
" ----------------------------

Plugin 'itchyny/lightline.vim'
Plugin 'taohex/lightline-buffer'
Plugin 'mhinz/vim-startify'
Plugin 'tpope/vim-obsession'
Plugin 'joonty/vdebug'
Plugin 'qpkorr/vim-bufkill'
Plugin 'vim-scripts/nextval'
Plugin 'vim-scripts/loremipsum'

" ----------------------------
" GUI {{{2
" ----------------------------

Plugin 'flazz/vim-colorschemes'
Plugin 'Badacadabra/vim-archery'
Plugin 'joshdick/onedark.vim'
Plugin 'cocopon/iceberg.vim'
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'ryanoasis/nerd-fonts'
Plugin 'ryanoasis/vim-devicons'

" ----------------------------

" Utils {{{2
" ----------------------------
Plugin 'vim-scripts/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'


" End Vundle {{{1
call vundle#end()
