" --------------------------
" jcf's NOX .vimrc {{{
" --------------------------

" Basic settings {{{
so ~/.exrc
" Don't use vi-compatibility mode
set nocompatible
" Change the mapleader from \ to ,
let mapleader = ","
" 
" Use UTF-8 as the default text encoding
set encoding=utf-8
" Set locale
try
    lang en_US
catch
endtry
" Lots of history
set history=1000 
" Lots of undo levels
set undolevels=1000
"set undoreload=10000
" More efficient commands
nnoremap ; :
"
" Enhanced command line completion
set wildmenu
set wildmode=list:longest
"
" }}} Basic settings

" VIM User Interface {{{ 
" Enable syntax highlighting when colours are available
"if &t_Co > 2 || has('gui_running')
"    syntax enable
"    syntax on 
"endif
" Always show what mode we're in
set showmode
" Always display row/column info 
set ruler
" Use relative line numbering
"set relativenumber
" Set status line (from Kim Schultz, "Hacking Vim")
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]
" tell Vim to always put in a status line, even if there's only one window
set laststatus=2
" Enable highlighting of misspelled terms
set spell
" Set characters to show for trailing whitespace and eol (also supports tab, but expandtab turns all tabs into spaces.
set listchars=tab:>>,trail:!,eol:$
"
"let clj_highlight_builtins = 1
" }}} VIM User Interface

" Editing behaviour {{{
" Hide buffers instead of closing them 
set hidden 
" Word wrap 
set wrap 
"set textwidth=79
"set formatoptions=qrn1
"set colorcolumn=85
"set nowrap " Don't wrap 
set linebreak
set nolist " list disables linebreak
" Don't automatically insert line breaks in new text
set textwidth=0
set wrapmargin=0
" Keep cursor 8 lines from top/bottom when scrolling
set scrolloff=8
" Use the smart version of backspace 
" (ie, allow backspacing over indent, eol, and the start of an insert)
"set backspace=indent,eol,start
set backspace=2
" Tab settings
"set tabstop=4      " a tab is four spaces (already set in .exrc)
set shiftwidth=4   " number of spaces to use for autoindenting
set softtabstop=4  " <BS> pretends to remove a tab, even if they're spaces
set smarttab       " insert tabs at bol according to shiftwidth, not tabstop
set expandtab      " expand tabs by default
set autoindent     " autoindent on by default"
" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap
" Searching & moving {
" Insert \v before search strings for 'normal' regex behaviour
nnoremap / /\v
vnoremap / /\v
set ignorecase  " case-insensitive when all-lowercase
set smartcase   " case-sensitive when some uppercase
set gdefault    " Default global line substitution
set wrapscan    " Search scan wraps lines
set incsearch   " Incremental search
set showmatch   " Show matches 
set hlsearch    " Highlight search terms
" set nohlsearch " Don't highlight search terms
nnoremap <leader><space> :noh<cr>   " Clear search
" Tab key matches bracket pairs
nnoremap <tab> %
vnoremap <tab> %
" Move across rows as they appear in the editor
nnoremap j gj
nnoremap k gk
" } Searching & moving
"
" }}} Editing behaviour

" Code folding {{{
set foldenable        " enable folding
set foldcolumn=2      " add a fold column
"set nofoldenable     " don't fold by default
set foldmethod=indent " fold based on indentation
set foldnestmax=10    " deepest fold is 10 levels
"set foldlevel=1
"make sure folds are open by default
autocmd BufEnter * exe "normal zR" 
" }}} Code folding

" Backups etc. {{{
" Force creation of backup files 
set backup
" Create undo files
"set undofile
" No backup files! (not recommended)
"set nobackup
"set noswapfile
" Create backup files with a tilde extension (some systems nuke this)
set backupext=~
" Store backup files in a specific directory
set backupdir=~/.vim/_backup//
" Store swap files in a specific directory
set directory=~/.vim/_swap//
" Store undo files in a specific directory
"set undodir=~/.vim/_undo//
" Store views in a specific directory
set viewdir=~/.vim/_views//
" Automatically read a file that has changed on disk
set autoread
" }}} Backups etc.

" File-specific settings {{{
" C files
autocmd FileType c setlocal shiftwidth=4 softtabstop=4 expandtab
"
" }}} File-specific settings

" Function keys {{{
" Quickly edit/reload the .vimrc file
nnoremap <leader>ev :e  ~/.vimrc<cr>
" nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
"nnoremap <leader>sv :source $MYVIMRC<cr>
"
" Edit my vimrc
map <F2> :e $MYVIMRC<cr>
" Re-source my vimrc
map <F3> :source $MYVIMRC<cr>
" Invoke ispell for spelling correction
map <F4> :w<CR>:!ispell -x %<cr>:e!<cr><cr>
"
" Reformat paragraphs
"map <F5> !}fmt <cr>
" Toggle syntax setting on/off
"map <F5> :execute ToggleSyntax()<CR>
" Toggle colour on/off
"map <F7> :execute ToggleColor()<CR>
"
" }}} Function keys

" }}} End of NOX .vimrc

