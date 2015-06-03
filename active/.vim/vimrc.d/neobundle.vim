" ----------------------------------------
" To Evaluate
" ----------------------------------------

" A Whirlwind Tour of my Vimrc - Part 1 of 2
" https://www.youtube.com/watch?v=xZuy4gBghho

" A Whirlwind Tour of my Vimrc - Part 2 of 2
" https://www.youtube.com/watch?v=MQHc0Vj0IsE

" ----------------------------------------
" @NeoBundle
" ----------------------------------------

if has('vim_starting')
 if &compatible
   " Be iMproved
   set nocompatible
 endif

 " Required:
 set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch "Shougo/neobundle.vim"

" ----------------------------------------
" ASCII values
" ----------------------------------------

NeoBundle "tpope/vim-characterize"

" ----------------------------------------
" Buffer Settings
" ----------------------------------------

NeoBundle "tpope/vim-sleuth"
NeoBundle "dietsche/vim-lastplace"

" ----------------------------------------
" Color Schemes, Themes
" ----------------------------------------

" Spacegray Theme (https://github.com/ajh17/Spacegray.vim)
NeoBundle 'ajh17/Spacegray.vim'

" ----------------------------------------
" Commands
" ----------------------------------------

NeoBundle "tpope/vim-repeat"

" ----------------------------------------
" Content Search & Selection (within file)
" ----------------------------------------

NeoBundle "gmarik/vim-visual-star-search"

" ----------------------------------------
" Editing
" ----------------------------------------

" General
NeoBundle "tomtom/tcomment_vim"
NeoBundle "Raimondi/delimitMate"
NeoBundle "tpope/vim-endwise"
NeoBundle "tpope/vim-eunuch"
NeoBundle "sjl/gundo.vim"
NeoBundle "tpope/vim-surround"

" Contextual
NeoBundle "mjbrownie/swapit"

" Search & Replace
NeoBundle "epmatsw/ag.vim"

" ----------------------------------------
" Documentation
" ----------------------------------------

" Markdown
" NeoBundle "gabrielelana/vim-markdown"
NeoBundle "itspriddle/vim-marked"

" ----------------------------------------
" Completion
" ----------------------------------------

NeoBundle "Shougo/neocomplete.vim"

" ----------------------------------------
" Debugging
" ----------------------------------------

NeoBundle "mattboehm/vim-unstack"

" ----------------------------------------
" Documentation
" ----------------------------------------

NeoBundle "rizzatti/dash.vim"

" ----------------------------------------
" Formatting
" ----------------------------------------

" auto formatting
NeoBundle "tpope/vim-endwise"
NeoBundle "HTML-AutoCloseTag"

" generic formatting
NeoBundle "Align"
NeoBundle "Chiel92/vim-autoformat"
NeoBundle "editorconfig/editorconfig-vim"
NeoBundle "AndrewRadev/splitjoin.vim"
NeoBundle "scrooloose/syntastic"
NeoBundle "SQLUtilities"

" ----------------------------------------
" HTTP Client
" ----------------------------------------

NeoBundle "diepm/vim-rest-console"

" ----------------------------------------
" Navigation, Exploration
" ----------------------------------------

NeoBundle "kien/ctrlp.vim"
NeoBundle "Lokaltog/vim-easymotion"
NeoBundle "bogado/file-line"
NeoBundle "yegappan/mru"
NeoBundle "scrooloose/nerdtree"
NeoBundle "tyru/open-browser.vim"
NeoBundle "tpope/vim-projectionist"
NeoBundle "mkitt/tabline.vim"
NeoBundle "Shougo/unite.vim"

" ----------------------------------------
" Programming (languages)
" ----------------------------------------

" Polyglot (lots of languages)
NeoBundle "sheerun/vim-polyglot"
NeoBundle "calebsmith/vim-lambdify"

" Cocoa
NeoBundle "msanders/cocoa.vim"

" JavaScript
NeoBundle "marijnh/tern_for_vim", { "build": { "mac": "npm install" } }

" JSON Schema
NeoBundle "Quramy/vison"

" JavaScript (React/JSX)
NeoBundle "mxw/vim-jsx"

" PHP
NeoBundle "spf13/PIV"

" Ruby
NeoBundle "tpope/vim-bundler"

" UML / diagramming
" https://github.com/aklt/plantuml-syntax
NeoBundleLazy "aklt/plantuml-syntax"

" ----------------------------------------
" Shell, Terminal, Multiplex
" ----------------------------------------

NeoBundle "shougo/vimproc", {'build': {'windows': 'make -f make_mingw32.mak', 'cygwin': 'make -f make_cygwin.mak', 'mac': 'make -f make_mac.mak', 'unix': 'make -f make_unix.mak'}}
NeoBundle "shougo/vimshell"
NeoBundle "tpope/vim-dispatch"

" ----------------------------------------
" Snippets, Templates
" ----------------------------------------

NeoBundle "SirVer/ultisnips"
NeoBundle "honza/vim-snippets"

" ----------------------------------------
" Source Control
" ----------------------------------------

" Git
NeoBundle "tpope/vim-git"
NeoBundle "tpope/vim-fugitive"
NeoBundle "int3/vim-extradite"
NeoBundle "gregsexton/gitv"

" Github
NeoBundle "mattn/webapi-vim"
NeoBundle "tpope/vim-rhubarb"

" ----------------------------------------
" Status Line
" ----------------------------------------

NeoBundle "bling/vim-airline"

" ----------------------------------------
" Tabs
" ----------------------------------------

NeoBundle "gcmt/taboo.vim"

" ----------------------------------------
" Text Objects
" ----------------------------------------

NeoBundle "paradigm/TextObjectify"
NeoBundle "machakann/vim-textobj-delimited"

" ----------------------------------------
" Tmux Integration
" ----------------------------------------

NeoBundle "AdrianSchneider/vim-tdd"

" ----------------------------------------
" Visual Indicators
" ----------------------------------------

NeoBundle "nathanaelkane/vim-indent-guides"
NeoBundle "mhinz/vim-signify"
NeoBundle "kien/rainbow_parentheses.vim"

" ----------------------------------------
" Visual Selection, Cursors
" ----------------------------------------

NeoBundle "myusuf3/numbers.vim"
NeoBundle "gorkunov/smartpairs.vim"

" ----------------------------------------
" ----------------------------------------

" Required:
call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
