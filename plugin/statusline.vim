" Made by Teodor Spæren (TheRedMood) <teodor_spaeren@riseup.net>
" -v-1 Colours
" Normal color
hi User1 ctermfg=15 ctermbg=0
" Fugitive
hi User2 ctermfg=11 ctermbg=0
" -^-1
" -v-1 Statusline
set statusline=
set statusline+=%1*
set statusline+=%<                             " Right justify
set statusline+=%m%t                              " Filename and evt modified

" Puts in the current git status
if count(g:pathogen_disabled, 'Fugitive') < 1   
  set statusline+=%2*
  set statusline+=%{fugitive#statusline()}
  set statusline+=%1*
endif

set statusline+=\ %y                             " Type of file in buffer
set statusline+=[%{&fileformat}                " File format
set statusline+=\|                             " Separator
set statusline+=%{strlen(&fenc)?&fenc:'none'}] " File encoding

set statusline+=%=                             " Mid separator

set statusline+=[C:%03v]                       " cursor column
set statusline+=[L:%03l/%03L]
set statusline+=[%03p%%]
" -^-1
" vim: set fmr=-v-,-^- fdm=marker cms="%s" et ts=2 sw=2 sts=2 :
