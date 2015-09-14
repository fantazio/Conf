" /etc/vim/vimrc ou ~/.vimrc
" Fichier de configuration de Vim

" Avertissement par flash (visual bell) plut�t que par beep
set vb

" Active la coloration syntaxique
syntax on
" Utiliser le jeu de couleurs standard
colorscheme evening

" Affiche la position du curseur 'ligne,colonne'
set ruler
" Affiche une barre de status en bas de l'�cran
set laststatus=2
" Contenu de la barre de status
set statusline=%<%f%h%m%r%=%l,%c\ %P

" Largeur mexi du texte ins�r�
" '72' permet de wrapper automatiquement � 72 caract�res
" '0' d�sactive la fonction
set textwidth=0

" Wrappe � 72 caract�res avec la touche '#'
" map # {v}! par 72
" Wrappe et justifie � 72 caract�res avec la touche '@'
" map @ {v}! par 72j

" Ne pas assurer la compatibilit� avec l'ancien Vi
set nocompatible
" Nombre de colonnes
" set columns=80
" Nombre de commandes dans l'historique
set history=50
" Options du fichier ~/.viminfo
set viminfo='20,\"50
" Active la touche Backspace
set backspace=2
" Autorise le passage d'une ligne � l'autre avec les fl�ches gauche et droite
set whichwrap=<,>,[,]
" Garde toujours une ligne visible � l'�cran au dessus du curseur
set scrolloff=1
" Affiche les commandes dans la barre de status
set showcmd
" Affiche la paire de parenth�ses
set showmatch
" Essaye de garder le curseur dans la m�me colonne quand on change de ligne
set nostartofline
" Option de la compl�tion automatique
set wildmode=list:longest
" Par d�faut, ne garde pas l'indentation de la ligne pr�c�dente
" quand on commence une nouvelle ligne
set noautoindent
" Options d'indentation pour un fichier C
set cinoptions=(0
" Affiche les caract�res sp�ciaux
set list listchars=tab:��,trail:�,extends:�,eol:�
" Colonne 120 surlign�e
set colorcolumn=120

" xterm-debian est un terminal couleur
if &term =~ "xterm-debian" || &term =~ "xterm-xfree86"
    set t_Co=16
    set t_Sf=[3%dm
    set t_Sb=[4%dm
endif

" Quand on fait de la programmation, on veut qu'il n'y ait jamais de
" vraies tabulations ins�r�es mais seulement 4 espaces
autocmd BufNewfile,BufRead *.c set expandtab
autocmd BufNewfile,BufRead *.c set tabstop=4
autocmd BufNewfile,BufRead *.h set expandtab
autocmd BufNewfile,BufRead *.h set tabstop=4
autocmd BufNewfile,BufRead *.cpp set expandtab
autocmd BufNewfile,BufRead *.cpp set tabstop=4

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
" D�commentez les 2 lignes suivantes si vous voulez avoir les tabulations et
" les espaces marqu�s en caract�res bleus
"set list
"set listchars=tab:>-,trail:-

" Les recherches ne sont pas 'case sensitives'
set ignorecase
" Mettre en surlign� les expressions recherch�es
set hlsearch

" Fichier d'aide
set helpfile=$VIMRUNTIME/doc/help.txt.gz

" Le d�coupage des folders se base sur l'indentation
" set foldmethod=indent
" 12 niveaux d'indentation par d�faut pour les folders
" set foldlevel=12

" Police de caract�re pour Gvim qui supporte le symbole euro
" set guifont=-misc-fixed-medium-r-semicondensed-*-*-111-75-75-c-*-iso8859-15

" Change les couleurs selon le caractere fonce/clair du fond
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
