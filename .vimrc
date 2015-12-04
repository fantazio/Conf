" /etc/vim/vimrc ou ~/.vimrc
" Vim configuration file

" Flash (visual bell) instead of beeping
set vb

" Syntax highliting
syntax on

set background=light
colorscheme solarized

" Display cursor position 'line,column'
set ruler
" Status bar
set laststatus=2
" Staus bar content
set statusline=%<%f%h%m%r%=%l,%c\ %P

" Inserted txt max width
" 'n' when n > 0 automatically wrap up to n chars
" '0' disable
set textwidth=0

" Wrap to n chars with <char>
" map <char> {v}! par n
" Wrap and justifies to n chars with <char>
" map <char> {v}! par nj

" Do not ensure old Vi compatibility
set nocompatible
" Nb columns
" set columns=80
" Nb commands stored in history
set history=50
" ~/.viminfo options
set viminfo='20,\"50
" Set backspace propagation up to 2 chars
set backspace=2
" Allow switching from a line to another with left/right arrows
set whichwrap=<,>,[,]
" Always keep n visible lines above the cursorr
"set scrolloff=n
" Display commands in status bar
set showcmd
" Display parentheses match
set showmatch
" Try to keep the cursor ate the same column when switching line
set nostartofline
" Ato-completion option
set wildmode=list:longest
" Default behaviour: do not look at the previous line when starting a new one
" quand on commence une nouvelle ligne
set noautoindent
" Indentation options for C files
set cinoptions=(0
" Show special chars
set list listchars=tab:»·,trail:°,extends:»,eol:·
" Highlight column 100
set colorcolumn=100

" xterm-debian is a colored term
if &term =~ "xterm-debian" || &term =~ "xterm-xfree86"
    set t_Co=16
    set t_Sf=[3%dm
    set t_Sb=[4%dm
endif

" Not tabs, only spaces. Tabs replaced with 2 spaces
autocmd BufNewfile,BufRead *.c set expandtab
autocmd BufNewfile,BufRead *.c set tabstop=2
autocmd BufNewfile,BufRead *.h set expandtab
autocmd BufNewfile,BufRead *.h set tabstop=2
autocmd BufNewfile,BufRead *.cpp set expandtab
autocmd BufNewfile,BufRead *.cpp set tabstop=2

autocmd BufNewfile,BufRead *.ml set expandtab
autocmd BufNewfile,BufRead *.ml set tabstop=2
autocmd BufNewfile,BufRead *.mf set expandtab
autocmd BufNewfile,BufRead *.mf set tabstop=2
autocmd BufNewfile,BufRead *.mf set filetype=ocaml
autocmd BufNewfile,BufRead *.mf set textwidth=0
autocmd BufNewfile,BufRead *.mfi set tabstop=2
autocmd BufNewfile,BufRead *.mfi set filetype=ocaml
autocmd BufNewfile,BufRead *.mfi set textwidth=0
autocmd BufNewfile,BufRead *.csml set tabstop=2
autocmd BufNewfile,BufRead *.csml set filetype=ocaml
autocmd BufNewfile,BufRead *.csml set textwidth=0


"autocmd BufRead *.tex,*.latex set spell
"autocmd BufRead *.tex,*.latex set spelllang=en

" autocmd BufRead *.tex,*.latex set tw=70
" autocmd BufRead *.tex,*.latex set nocin

" Highlight searched expressions
set hlsearch

" Help
" set helpfile=$VIMRUNTIME/doc/help.txt.gz

" Color changes depending on background
map <F11> :let &background = ( &background == "dark"? "light" : "dark" )<CR>
nnoremap <F10> :nohls<CR>
map tn :tabnew<CR>
map tq :tabclose<CR>
map tt :tabNext<CR>
map tp :tabprevious<CR>
map <C-V>n :tabnew<CR>
map <C-V>q :tabclose<CR>
map <C-V><C-V> :tabNext<CR>
map <C-V>v :tabNext<CR>
map <C-Tab> :tabNext<CR>
map <F12> :%!~/scripts/vi_indent.sh 2>/dev/null<CR>

set et
set sw=2
set smarttab
filetype indent on

autocmd BufRead mutt* syntax on
autocmd BufRead mutt* set ft=mail

set textwidth=0

filetype plugin on
