" 'You can pry my vimrc out of my cold, dead fingers' - Peepcode
" This mosaic of a vimrc was pieced together by:
"   Teodor Spæren (TheRedMood) <teodor_spaeren@riseup.net>

" -v-1  Startup 
set nocompatible                            " No vi-compatibility
filetype off
" -^-1
" -v-1 Pathogen
  " Disable plugins -v-2
    " call add(g:pathogen_disabled, '<bundle folder name>')
    let g:pathogen_disabled = ['ctrlp.vim', 'vim-git-log']
  " -^-2 
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
" -^-1
" -v-1 Moving around, searching and patterns
set incsearch                               " Show match for partly typed search command
set ignorecase                              " Ignore case when using a search pattern
set smartcase                               " Override 'ignorecase' when a pattern has uppercase characters
set hlsearch                                " Highligth search results
" -^-1
" -v-1 Displaying text
syntax on                                   " Set syntax highlighting on
set nowrap                                  " Long lines wrap
"set scrolloff=20                            " Number of screen lines to show around the cursor
set fillchars=vert:\|,fold:-
set cmdheight=1                             " Number of lines used for the command-line
set listchars=tab:▸\ ,eol:¬,trail:·,extends:→,precedes:←  " List of strings used for list mode
set relativenumber                          " Show relative line number for each line
set numberwidth=5                           " Number of columns to use for the line number
" -^-1
" -v-1 Tags
set tags=./tags,tags;,~/.vim/tags/
" -^-1
" -v-1 Syntax, highlighting and spelling
set spelllang=en_gb
set background=dark
  " -v-2 Appearance
  if &t_Co == 256                           " If we have a 256 color terminal
    let g:hybrid_use_Xresources = 1         "   ... Then let our hybrid theme use the colors in Xresources
    colorscheme hybrid
  endif
  " -^-2
" -^-1
" -v-1 Multiple windows
set laststatus=2                            " Needed for drawing the statusline
set hidden                                  " Don't unload a buffer when no longer shown in a window
set splitbelow                              " Open new windows under the current one ..
set splitright                              " .. or to the right of the current one.
" -^-1
" -v-1 Multiple tag pages
set showtabline=1                           " When to use a tab pages line
" -^-1
" -v-1 Using the mouse
set mouse=a                                 " List of flags for using the mouse
set mousehide                               " Hide the mouse pointer while typing
" -^-1
" -v-1 Messages and info
set shortmess+=ITa                          " List of flags to make messages shorter
set showcmd                                 " Show (partial) command keys in the status line
set showmode
set ruler                                   " Show cursor position below each window
set confirm                                 " Start a dialog when a command fails
set noerrorbells                            " No ringing the bell for error messages
set novisualbell                            " No visual bell instead of beeping either
set t_ti= t_te=
" -^-1
" -v-1 Editing text
set backspace=indent,eol,start              " Specify what backspace and C-w can do in insert mode.
set formatoptions=rq                        " List of flags how automatic formatting works :help fo-table
set completeopt+=menu,longest               " Whether to use a popup menu for insert mode completion
set omnifunc=syntaxcomplete#Complete        " Function for filetype-specific insert mode completion
set dictionary+=/usr/share/dict/words       " List of dictionary files for keyword completion
set infercase                               " Adjust case of a keyword completion match 
set showmatch                               " When inserting a bracket, briefly highlight the match
" -^-1
" -v-1 Tabs and indenting
set tabstop=4                               " Number of spaces a <Tab> in the text stands for
set shiftwidth=4                            " Number of spaces used for each step of (auto)indent
set shiftround                              " Round to 'shiftwidth' for '<<' and '>>'
set expandtab                               " Expand <Tab> to spaces in insert mode
set autoindent                              " Autoindent
" -^-1
" -v-1 Reading and writing files
set backup                                  " Keep a backup after overwriting a file
set backupdir=~/.vim/backup                 " List of directories to put backup files in
" -^-1
" -v-1 The swap file
set directory=~/.vim/swap                   " List of directories for the swap file
" -^-1
" -v-1 Command line editing
set history=250                             " How many command lines are remembered
set wildmode=longest:list,full              " Specifies how command line completion works
set wildmenu                                " Command-line completion shows a list of matches
" -^-1
" -v-1 Multi-byte characters
set encoding=utf-8                          " Character encoding used in Vim
" -^-1
" -v-1 Various
set gdefault                                " Use the 'g'lobal flag for :substitute
set viminfo+=n~/.vim/.viminfo

  " -v-2 Remove weird startup kludges
  " http://superuser.com/questions/553601/vim-has-unexpected-key-presses-on-startup-what-could-be-causing-this
    set t_RV= ttymouse=xterm2
  " -^-2
" -^-1
" -v-1 TOhtml
let g:html_use_encoding = "UTF-8"           " I <3 UTF-8
let g:html_ignore_folding = 1               " Ignore folds so that everything is generated
let g:html_use_xhtml = 1                    " Generate xhtml files
let g:html_prevent_copy = "fn"              " Make the fold column and line numbers uncopiable
let g:html_number_lines = 1                 " Enable line numbers is output
" -^-1
" Fix arrow keys -v-1
map <ESC>oA <Up>
map <ESC>oB <Down>
map <ESC>oC <Right>
map <ESC>oD <Left>
" -^-1
" vim: set fmr=-v-,-^- fdm=marker cms="%s" et ts=2 sw=2 sts=2 :
