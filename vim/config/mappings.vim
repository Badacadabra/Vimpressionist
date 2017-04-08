" =============================================================================
" ------------------------------- Key mappings --------------------------------
" =============================================================================

" <Leader> key definition
let mapleader = "," " easier to use than \

" Unmap noob keys! {{{1
" -----------------------------------------------------------------------------

map <Home> <Nop>
imap <Home> <Nop>

map <End> <Nop>
imap <End> <Nop>

map <Up> <Nop>
imap <Up> <Nop>

map <Right> <Nop>
imap <Right> <Nop>

map <Down> <Nop>
imap <Down> <Nop>

map <Left> <Nop>
imap <Left> <Nop>

map <PageUp> <Nop>
imap <PageUp> <Nop>

map <PageDown> <Nop>
imap <PageDown> <Nop>

" Global mappings {{{1
" -----------------------------------------------------------------------------

" select all
noremap <Leader>a <Esc>ggVG

" display the file system tree
noremap <Leader>nt :NERDTreeTabsToggle<CR>

" display the tag bar
noremap <Leader>tb :TagbarToggle<CR>

" Mappings in normal mode {{{1
" -----------------------------------------------------------------------------

" edit vimrc
nnoremap <silent> <Leader>ev :e $MYVIMRC<CR>

" source (reload) vimrc
nnoremap <silent> <Leader>sv :so $MYVIMRC<CR>

" yank until EOL (y$) instead of the entire line (yy)
nnoremap Y y$

" hide highlighted search results
nnoremap <C-H> :nohlsearch<CR><C-H>

" add blank line before the cursor
nnoremap <BS> O<Esc>0xj

" add blank line after the cursor
nnoremap <CR> o<Esc>0xk 

" create new tab
nnoremap <Leader>tn :tabnew<CR>

" show syntax checking information
nnoremap <Leader>si :SyntasticInfo<CR>

" launch syntax checking
nnoremap <Leader>sc :SyntasticCheck<CR>

" toggle Syntastic
nnoremap <Leader>st :SyntasticToggleMode<CR>

" display the undo tree
nnoremap <Leader>gt :GundoToggle<CR>

" Mappings in insert mode {{{1
" -----------------------------------------------------------------------------

" quit insert mode and go back to normal mode
inoremap ,; <Esc>

" delete current character
inoremap <C-X> <Esc>xi

" delete current line
inoremap <C-D> <Esc>ddi

" Mappings in visual mode {{{1
" -----------------------------------------------------------------------------

" quit visual mode and go back to normal mode
vnoremap ,; <Esc>

" select all
vnoremap a <Esc>ggVG
