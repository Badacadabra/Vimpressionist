" =============================================================================
" ------------------------------- Key mappings --------------------------------
" =============================================================================

" <leader> key definition
let mapleader = "," " easier to use than \

" Global mappings {{{1
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

" Mappings in normal mode {{{1
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

" Mappings in insert mode {{{1
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
