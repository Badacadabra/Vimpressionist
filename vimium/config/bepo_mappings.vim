" Unmap all default bindings
unmapAll

" Navigating the page {{{1
" -------------------

" j (AZERTY) = t (BÉPO)
map t scrollDown
" k (AZERTY) = s (BÉPO)
map s scrollUp
" gg (AZERTY) = ,, (BÉPO)
map ,, scrollToTop
" G (AZERTY) = ; (BÉPO)
map ; scrollToBottom
" <c-u> (AZERTY) = <c-v> (BÉPO)
map <c-v> scrollPageUp
" <c-d> (AZERTY) = <c-i> (BÉPO)
map <c-i> scrollPageDown
" <c-b> (AZERTY) = <c-k> (BÉPO)
map <c-k> scrollFullPageUp
" <c-f> (AZERTY) = <c-e> (BÉPO)
map <c-e> scrollFullPageDown
" h (AZERTY) = c (BÉPO)
map c scrollLeft
" l (AZERTY) = r (BÉPO)
map r scrollRight
" zH (AZERTY) = éC (BÉPO)
map éC scrollToLeft
" zL (AZERTY) = éR (BÉPO)
map éR scrollToRight
" r (AZERTY) = o (BÉPO)
map o reload
" yy (AZERTY) = ^ (BÉPO)
map ^ copyCurrentUrl
" p (AZERTY) = j (BÉPO)
map j openCopiedUrlInCurrentTab
" P (AZERTY) = J (BÉPO)
map J openCopiedUrlInNewTab
" gu (AZERTY) = ,v (BÉPO)
map ,v goUp
" gU (AZERTY) = ,V (BÉPO)
map ,V goToRoot
" i (AZERTY) = d (BÉPO)
map d enterInsertMode
" v (AZERTY) = . (BÉPO)
map . enterVisualMode
" V (AZERTY) = : (BÉPO)
map : enterVisualLineMode
" gi (AZERTY) = ,d (BÉPO)
map ,d focusInput
" f (AZERTY) = e (BÉPO)
map e LinkHints.activateMode
" F (AZERTY) = E (BÉPO)
map E LinkHints.activateModeToOpenInNewTab
" <a-f> (AZERTY) = <a-e> (BÉPO)
map <a-e> LinkHints.activateModeWithQueue
" yf (AZERTY) = ê (BÉPO)
map ê LinkHints.activateModeToCopyLinkUrl
" [[ (AZERTY) = ]] (BÉPO)
map ]] goPrevious
" ]] (AZERTY) = ≠≠ (BÉPO)
map ≠≠ goNext
" gf (AZERTY) = ,e (BÉPO)
map ,e nextFrame
" gF (AZERTY) = ,E (BÉPO)
map ,E mainFrame
" m (AZERTY) = n (BÉPO)
map n Marks.activateCreateMode
" ` (AZERTY) = ± (BÉPO)
map ± Marks.activateGotoMode

" Using the vomnibar {{{1
" ------------------

" o (AZERTY) = l (BÉPO)
map l Vomnibar.activate
" O (AZERTY) = L (BÉPO)
map L Vomnibar.activateInNewTab
" T (AZERTY) = È (BÉPO)
map È Vomnibar.activateTabSelection
" b (AZERTY) = k (BÉPO) 
map k Vomnibar.activateBookmarks
" B (AZERTY) = K (BÉPO)
map K Vomnibar.activateBookmarksInNewTab
" ge (AZERTY) = ,p (BÉPO)
map ,p Vomnibar.activateEditUrl
" gE (AZERTY) = ,P (BÉPO)
map ,P Vomnibar.activateEditUrlInNewTab

" Using find {{{1
" ----------

" / (AZERTY) = H (BÉPO)
map H enterFindMode
" n (AZERTY) = ' (BÉPO)
map ' performFind
" N (AZERTY) = ? (BÉPO)
map ? performBackwardsFind
 
" Navigating history {{{1
" ------------------
 
" <c-o> (AZERTY) = <c-l> (BÉPO) 
map <c-l> goBack
" <c-i> (AZERTY) = <c-d> (BÉPO)
map <c-d> goForward

" Manipulating tabs {{{1
" -----------------
 
" t (AZERTY) = è (BÉPO)
map è createTab
" J (AZERTY) = T (BÉPO)
map T previousTab
" gT (AZERTY) = ,È (BÉPO)
map ,È previousTab
" K (AZERTY) = S (BÉPO)
map S nextTab
" gt (AZERTY) = ,è (BÉPO)
map ,è nextTab
" g0 (AZERTY) = ,0 (BÉPO)
map ,0 firstTab
" g$ (AZERTY) = ,w (BÉPO)
map ,w lastTab
" yt (AZERTY) = ề (BÉPO)
map ề duplicateTab
" <a-p> (AZERTY) = <a-j> (BÉPO)
map <a-j> togglePinTab
" d (AZERTY) = i (BÉPO)
map i removeTab
" u (AZERTY) = v (BÉPO)
map v restoreTab
" W (AZERTY) = À (BÉPO)
map À moveTabToNewWindow
" << (AZERTY) = êê (BÉPO)
map êê moveTabLeft
" >> (AZERTY) = ÊÊ (BÉPO)
map ÊÊ moveTabRight
" ^ (AZERTY) = zz (BÉPO)
map zz visitPreviousTab

" Miscellaneous {{{1
" -------------

" ? (AZERTY) = Q (BÉPO)
map Q showHelp
" gs (AZERTY) = ,u (BÉPO)
map ,u toggleViewSource
