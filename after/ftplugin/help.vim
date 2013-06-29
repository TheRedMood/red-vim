" Thanks again n2o4 <3

" Forward and backward in helpfiles
nnoremap <buffer> <CR> <C-]>
nnoremap <buffer> <BS> <C-T>

" For :helpgrep
nnoremap <buffer> <leader>j :cnext<CR>
nnoremap <buffer> <leader>k :cprev<CR>

" Next/previous 'option'-link of the help file
nmap <buffer> o /'[a-z]\{2,\}'<CR>
nmap <buffer> O ?'[a-z]\{2,\]'<CR>

" Next/previous 'subject'-link of the help file
nmap <buffer> s /\|\S\+\|<CR>l
nmap <buffer> S h?\|\S\+\|<CR>l

setlocal colorcolumn=0
