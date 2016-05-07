" =============================================================================
" ------------------------------- Key mappings --------------------------------
" =============================================================================

" <leader> key definition
let mapleader = "," " easier to use than \

" Global mappings {{{1
" -----------------------------------------------------------------------------

" select all
map <C-a> <Esc>ggVG
" display the file system tree
map <S-n> :NERDTreeTabsToggle<CR>
" display the tag bar
map <C-l> :TagbarToggle<CR>

" Mappings in normal mode {{{1
" -----------------------------------------------------------------------------

" edit vimrc
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
" source (reload) vimrc
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>
" yank until EOL (y$) instead of the entire line (yy)
nnoremap Y y$
" add blank line before the cursor
nnoremap <BS> O<Esc>0xj
" add blank line after the cursor
nnoremap <CR> o<Esc>0xk 
" create new tab
nnoremap <leader>tt :tabnew<CR>
" show syntax checking information
nnoremap <leader>si :SyntasticInfo<CR>
" launch syntax checking
nnoremap <leader>sc :SyntasticCheck<CR>
" hide highlighted search results
nnoremap <C-h> :nohl<CR><C-h>
" display the undo tree
nnoremap <C-u> :GundoToggle<CR>
" launch Symfony console
nnoremap <leader>f :execute ":!"g:symfony_enable_shell_cmd<CR>

" Mappings in insert mode {{{1
" -----------------------------------------------------------------------------

" quit insert mode and go back to normal mode
inoremap ,; <Esc>
" delete current line
inoremap <C-k> <Esc>ddi
" indent current line
inoremap <C-i> <Esc>>i
" unindent current line
inoremap <C-y> <Esc><<0i
