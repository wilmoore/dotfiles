" ----------------------------------------
" To Evaluate
" ----------------------------------------

" Vim Plugins I Use:
" http://mirnazim.org/writings/vim-plugins-i-use/'

" SearchParty
" https://github.com/dahu/SearchParty

" autoformat (attempt to configure golang)
" https://github.com/Chiel92/vim-autoformat

" vim-testdrive
" https://github.com/monokrome/vim-testdrive

" vim-vroom
" https://github.com/skalnik/vim-vroom
" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity

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

" ----------------------------------------
" Data / Database
" ----------------------------------------

NeoBundle "chrisbra/csv.vim"

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
" Buffer Settings
" ----------------------------------------

NeoBundle "tpope/vim-sleuth"

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
" Status line
" ----------------------------------------

NeoBundle "Lokaltog/powerline", {'rtp': 'powerline/bindings/vim/'}
NeoBundle "stephenmckinney/vim-solarized-powerline"

" ----------------------------------------
" Visual Selection, Cursors
" ----------------------------------------

NeoBundle "myusuf3/numbers.vim"

" ----------------------------------------
" Visual Indicators
" ----------------------------------------

NeoBundle "nathanaelkane/vim-indent-guides"
NeoBundle "mhinz/vim-signify"
NeoBundle "kien/rainbow_parentheses.vim"

" ----------------------------------------
" Color Schemes, Themes
" ----------------------------------------

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
" NeoBundle "mattn/gist-vim"
NeoBundle "tpope/vim-rhubarb"
NeoBundle "junegunn/vim-github-dashboard"

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

" ----------------------------------------
" Programming (languages)
" ----------------------------------------

" Polyglot (lots of languages)
NeoBundle "sheerun/vim-polyglot"

" JavaScript
NeoBundle "marijnh/tern_for_vim", { "build": { "mac": "npm install" } }

" JSON
NeoBundle "tpope/vim-jdaddy"

" PHP
NeoBundle "spf13/PIV"

" Ruby
NeoBundle "tpope/vim-rails"

" UML / diagramming
NeoBundleLazy "aklt/plantuml-syntax"

" ----------------------------------------
" Sublime Text Features
" ----------------------------------------

" https://github.com/terryma/vim-multiple-cursors
" http://www.youtube.com/watch?v=Umb59mMvCxA
NeoBundle "terryma/vim-multiple-cursors"

" Required:
call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

