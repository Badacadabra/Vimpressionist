" =============================================================================
" --------------------------- Plugins configuration ---------------------------
" =============================================================================

" Taboo {{{1
let g:taboo_tabline=0
set guioptions==e
set sessionoptions+=tabpages,globals

" Syntastic {{{1
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

" UltiSnips {{{1
let g:UltiSnipsExpandTrigger="<c-j>" " expand the snippet under the cursor in a YouCompleteMe popup
let g:UltiSnipsJumpForwardTrigger="<c-j>" " go to the next code fragment in the snippet
let g:UltiSnipsJumpBackwardTrigger="<c-k>" " go the the previous fragment in the snippet

" Airline {{{1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'term'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#bufferline#enable = 1

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

" PHP namespaces {{{1
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>
