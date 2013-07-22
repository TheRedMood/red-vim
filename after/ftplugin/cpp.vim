" Made by Teodor Spæren (TheRedMood) <teodor_spaeren@riseup.net>
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal noexpandtab

setlocal foldmethod=syntax
setlocal omnifunc=ccomplete#Complete
" Bock comments
" Line
" Remember: blockcomment line
nnoremap <buffer><leader>bl A /* . */<ESC>==$F.ciw

" Block
" Remember: blockcomment block
nnoremap <buffer><leader>bb i/*<ESC>==A<CR><CR>/<ESC>kA 

" Clean from // to /*  */
" Remember: blockcomment translate
nnoremap <buffer><leader>bt :%s/\/\/\s*\(.\{-}\)\s*$/\/\* \1 \*\//<CR>
