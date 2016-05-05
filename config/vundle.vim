" =============================================================================
" ---------------------- Plugins management with Vundle -----------------------
" =============================================================================

" Start Vundle {{{1
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins {{{1
Plugin 'VundleVim/Vundle.vim'
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
Plugin 'ludovicchabant/vim-gutentags'

" End Vundle {{{1
call vundle#end()
