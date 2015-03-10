" ----------------------------------------
" To Evaluate
" ----------------------------------------

" A Whirlwind Tour of my Vimrc - Part 1 of 2
" https://www.youtube.com/watch?v=xZuy4gBghho

" A Whirlwind Tour of my Vimrc - Part 2 of 2
" https://www.youtube.com/watch?v=MQHc0Vj0IsE

" ----------------------------------------
" NeoBundle
" ----------------------------------------

if has('vim_starting')
  " Be iMproved"
  set nocompatible

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" ----------------------------------------
" NeoBundle
" ----------------------------------------

NeoBundleFetch "shougo/neobundle.vim"

" ----------------------------------------
" Experiments
" ----------------------------------------

NeoBundle "gcmt/taboo.vim"
set guioptions-=e
set sessionoptions+=tabpages,globals
let g:taboo_tab_format = "(%N) %f%m"

NeoBundle 'haya14busa/incsearch.vim'
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" ----------------------------------------
" Data / Database
" ----------------------------------------

NeoBundle "chrisbra/csv.vim"
NeoBundle "SQLUtilities"

" ----------------------------------------
" Documentation
" ----------------------------------------

NeoBundle "rizzatti/dash.vim"

" ----------------------------------------
" Shell, Terminal, Multiplex
" ----------------------------------------

NeoBundle "shougo/vimproc", {'build': {'windows': 'make -f make_mingw32.mak', 'cygwin': 'make -f make_cygwin.mak', 'mac': 'make -f make_mac.mak', 'unix': 'make -f make_unix.mak'}}
NeoBundle "shougo/vimshell"
NeoBundle "tpope/vim-dispatch"

" ----------------------------------------
" Status Line
" ----------------------------------------

NeoBundle "bling/vim-airline"

" ----------------------------------------
" Buffer Settings
" ----------------------------------------

NeoBundle "tpope/vim-sleuth"
NeoBundle "dietsche/vim-lastplace"

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
" ASCII values
" ----------------------------------------

NeoBundle "tpope/vim-characterize"

" ----------------------------------------
" Visual Selection, Cursors
" ----------------------------------------

NeoBundle "myusuf3/numbers.vim"
NeoBundle "gorkunov/smartpairs.vim"

" ----------------------------------------
" Visual Indicators
" ----------------------------------------

NeoBundle "nathanaelkane/vim-indent-guides"
NeoBundle "mhinz/vim-signify"
NeoBundle "kien/rainbow_parentheses.vim"

" ----------------------------------------
" Color Schemes, Themes
" ----------------------------------------

NeoBundle "chriskempson/base16-vim"
NeoBundle "chriskempson/vim-tomorrow-theme"
NeoBundle "flazz/vim-colorschemes"
NeoBundle "godlygeek/csapprox"

" ----------------------------------------
" Completion
" ----------------------------------------

NeoBundle "Shougo/neocomplete.vim"

" ----------------------------------------
" VCS
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
" Snippets, Templates
" ----------------------------------------

NeoBundle "SirVer/ultisnips"
NeoBundle "honza/vim-snippets"

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
NeoBundle "AndrewRadev/inline_edit.vim"
NeoBundle "chrisbra/NrrwRgn"
NeoBundle "mjbrownie/swapit"

" Formatting
NeoBundle "Align"
NeoBundle "Chiel92/vim-autoformat"
NeoBundle "editorconfig/editorconfig-vim"
NeoBundle "AndrewRadev/splitjoin.vim"
NeoBundle "scrooloose/syntastic"

" Search & Replace
NeoBundle "epmatsw/ag.vim"

" ----------------------------------------
" Text Objects
" ----------------------------------------

NeoBundle "paradigm/TextObjectify"
NeoBundle "machakann/vim-textobj-delimited"

" ----------------------------------------
" Documentation
" ----------------------------------------

" API Blueprint
NeoBundle "kylef/apiblueprint.vim"

" Markdown
NeoBundle "gabrielelana/vim-markdown"
NeoBundle "itspriddle/vim-marked"

" ----------------------------------------
" Programming (common)
" ----------------------------------------

" Auto formatting
NeoBundle "tpope/vim-endwise"
NeoBundle "HTML-AutoCloseTag"

" Debugging
NeoBundle "mattboehm/vim-unstack"

" Inflections
NeoBundle "tpope/vim-abolish"

" TDD
NeoBundle "monokrome/vim-testdrive"

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

" JavaScript (React/JSX)
NeoBundle "mxw/vim-jsx"

" JSON
NeoBundle "tpope/vim-jdaddy"

" PHP
NeoBundle "spf13/PIV"

" Ruby
NeoBundle "tpope/vim-bundler"
NeoBundle "tpope/vim-rails"
NeoBundle "tpope/vim-rake"

" UML / diagramming
" https://github.com/aklt/plantuml-syntax
NeoBundleLazy "aklt/plantuml-syntax"

" ----------------------------------------
" Sublime Text Features
" ----------------------------------------

" https://github.com/terryma/vim-multiple-cursors
" http://www.youtube.com/watch?v=Umb59mMvCxA
NeoBundle "terryma/vim-multiple-cursors"

" ----------------------------------------
" Tmux Integration
" ----------------------------------------

NeoBundle "AdrianSchneider/vim-tdd"

" ----------------------------------------
" ----------------------------------------

" Required:
call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
" NeoBundleCheck

