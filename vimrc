" Pathogen -v-
  execute pathogen#infect()
  syntax on
  filetype plugin indent on
" -^-

set nocompatible " be improved

" Mod line
set modeline

" Statusline -v-
" Needed for drawing the statusline
set laststatus=2

"set statusline=%<\ %{mode()}\ \|\ %F%=\ %{&fileformat}\ \|\ %{&fileencoding}\ \|\ (%l,%c)\ \|\ %p%% 
set statusline=
set statusline+=%<
set statusline+=\ %t "Tail fo the filename
set statusline+=\ %y "Mode
set statusline+=\ [%{&fileformat}, "File format
set statusline+=\ %{strlen(&fenc)?&fenc:'none'}] "File encoding

set statusline+=%= "Mid separator

set statusline+=\ %c, " cursor column
set statusline+=%l/%L
set statusline+=\ %p%%
" -^-

" Folds
set foldmethod=marker
set foldmarker=-v-,-^-


" Mapping leader 
let mapleader = " "

" Spell checking
nmap <silent> <leader>s :set spell!<CR>
set spelllang=en_gb


" Encoding
set encoding=utf-8

" Tabs
set tabstop=4
set shiftwidth=4
set expandtab

" Autoindent
set autoindent

" Looks -v-
set background=dark
colorscheme desert

syntax enable
set nu
" -^-

" backspaces
set backspace=indent,eol,start

" Folds
set foldmethod=marker

" save and restore folds
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

" Backup files, is put in a specific directory to keep the clutter out.
set backupdir=~/.vim/tmpfiles,.
set directory=~/.vim/tmpfiles,.

" Templates
autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e

" Thanks Ferus. <3
cmap w!! w !sudo tee >/dev/null %

" The smash escape?
inoremap jj <Esc>

" Because I like to learn
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
nnoremap j gj
nnoremap k gk

" Making searching and other general improvements.
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Easier split navigation.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Switching buffers with the arrow keys
noremap <left> :bp<CR>
noremap <right> :bn<CR>

" Thanks n2o4! This makes my norwegian life easier :)
map ø [
map æ ]
map Ø {
map Æ }

" Vimrc specific -v-
" Auto reload
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Easier acess .vimrc
nmap <leader>v :tabedit $MYVIMRC<CR>
" -^-
