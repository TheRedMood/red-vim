" These are to put it mildy 'based of' the great work of n2o4
" -v-1 Keybinds
" -v-2 Leader key settings
let mapleader = "\<space>"

" -v-2 Personal mappings
" Use double-space to enter command-line
" http://vimbits.com/bits/444
nnoremap <leader><space> :

" Seard with ag
nnoremap <leader>a :Ag<space>

" Open help <foo> in vertical split
nnoremap <leader>h :vert h<space>

" Quickly toggle tag window
nnoremap <silent> <leader>z :TagbarToggle<CR>

" Quickly toggle 'set spell'
nmap <silent> <leader>s :set spell!<CR>

" Quickly toggle 'set list'
nmap <leader>l :setlocal list!<cr>

" Stop cycling when you can fly
nnoremap <leader>ls :ls<CR>:b<space>

" I know when to ask for help, thank you very much.
noremap  <F1> <esc>
vnoremap <F1> <esc>
snoremap <F1> <esc>
inoremap <F1> <esc>
cnoremap <F1> <esc>

cmap w!! w !sudo tee >/dev/null %

cmap wdir !mkdir -p %h:h
" I have stupid arrow keys
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" Set local directory only for the current window (Each window has a local
" current directory that can be different from Vim's global current
" directory).
nnoremap <silent><leader>cd :lcd %:p:h<CR>

nnoremap <leader>ve <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>vs :source $MYVIMRC<cr>

nnoremap Y y$

" -v-2 Window management mappings
" Make window control quicker
nnoremap <leader>w <C-w>

" The following remaps were blatantly stolen from Barry Arthur, thanks!
" https://gist.github.com/dahu/5306096
"
" Resize windows to half/double their current size (multipliable by a count)
nnoremap \k :<c-u>exe "resize " . (winheight(0) / (2 * v:count1))<cr>
nnoremap \j :<c-u>exe "resize " . (winheight(0) * (2 * v:count1))<cr>
nnoremap \h :<c-u>exe "vertical resize " . (winwidth(0) / (2 * v:count1))<cr>
nnoremap \l :<c-u>exe "vertical resize " . (winwidth(0) * (2 * v:count1))<cr> 

" Max/Min window resize
nnoremap \K :<c-u>resize 1<cr>
nnoremap \J :<c-u>resize 9999<cr>
nnoremap \H :<c-u>vertical resize 1<cr>
nnoremap \L :<c-u>vertical resize 9999<cr>

" Rotate windows
nnoremap \<up>    <c-w>K
nnoremap \<down>  <c-w>J
nnoremap \<left>  <c-w>H
nnoremap \<right> <c-w>L

" -v-2 Navigation remaps
" Match bracket pairs with <tab>
"nnoremap <tab> %
"vnoremap <tab> %

nnoremap <leader>] :tjump /<c-r>=expand('<cword>')<cr><cr>
nnoremap <leader>} :ptag /<c-r>=expand('<cword>')<cr><cr>

nnoremap <silent> <Esc> :nohlsearch<CR><Esc>

" -v-2 Tab mappings
nnoremap \tt :tabnew<cr>
nnoremap \te :tabedit
nnoremap \tc :tabclose<cr>
nnoremap \to :tabonly<cr>
nnoremap \tn :tabnext<cr>
nnoremap \tp :tabprevious<cr>
nnoremap \tf :tabfirst<cr>
nnoremap \tl :tablast<cr>
nnoremap \tm :tabmove

" -v-2 Mappings for the fugitive-plugin
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gr :Gremove<cr>
nnoremap <leader>gl :Glog<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gm :Gmove<cr>
nnoremap <leader>gp :Ggrep<space>
nnoremap <leader>gR :Gread<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gP :Git push<cr>
nnoremap <leader>ge :Gedit<cr>
nnoremap <leader>gg :Git 

" -v-2 Quickfix-bindings
nnoremap <leader>co :copen<cr>
nnoremap <leader>cc :copen<cr>
nnoremap <leader>cw :cwindow<cr>
nnoremap <leader>cp :cprev<cr>
nnoremap <leader>cn :cnext<cr>
nnoremap <leader>cf :cfirst<cr>
nnoremap <leader>cl :clast<cr>
nnoremap <leader>CC :cclose<cr>
nnoremap <leader>ce :cex[]<cr>

" -v-2 http://vimcasts.org/episodes/the-edit-command/
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" -v-2 Omni-completion with ctrl-space (Thanks c00kiemon5ter)
" https://github.com/c00kiemon5ter/vim/blob/master/vimrc
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
                \ "\<lt>C-n>" :
                \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
                \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
                \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

" vim: set fmr=-v-,-^- fdm=marker cms="%s" et ts=2 sw=2 sts=2 :
