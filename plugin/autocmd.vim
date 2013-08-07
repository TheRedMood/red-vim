" -v-1 Auto commands
    " Templates
    autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e

    " Haskell monde
    " autocmd BufEnter *.hs compiler ghc

    au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
    au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>

" vim: set fmr=-v-,-^- fdm=marker cms="%s" et ts=2 sw=2 sts=2 :
