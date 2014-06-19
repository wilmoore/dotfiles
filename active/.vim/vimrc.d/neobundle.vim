" ----------------------------------------
" To Evaluate
" ----------------------------------------

" SearchParty
" https://github.com/dahu/SearchParty

" supertab
" https://github.com/ervandew/supertab

" taboo.vim
" https://github.com/gcmt/taboo.vim

" vim-testdrive
" https://github.com/monokrome/vim-testdrive

" vim-vroom
" https://github.com/skalnik/vim-vroom
" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity

" vim-sneak (alternative to easymotion)
" https://github.com/justinmk/vim-sneak
" http://www.reddit.com/r/vim/comments/267vrv/i_am_tim_pope_crafter_of_plugins_ama/chol6k2

" targets.vim
" https://github.com/wellle/targets.vim
" http://www.reddit.com/r/vim/comments/267vrv/i_am_tim_pope_crafter_of_plugins_ama/chopyo8

" fzf
" https://github.com/junegunn/fzf

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
" Shell, Terminal, Multiplex
" ----------------------------------------

NeoBundle "shougo/vimproc", {'build': {'windows': 'make -f make_mingw32.mak', 'cygwin': 'make -f make_cygwin.mak', 'mac': 'make -f make_mac.mak', 'unix': 'make -f make_unix.mak'}}
NeoBundle "shougo/vimshell"
NeoBundle "tpope/vim-dispatch"

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

" https://github.com/terryma/vim-multiple-cursors
" http://www.youtube.com/watch?v=Umb59mMvCxA
NeoBundle "terryma/vim-multiple-cursors"
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

NeoBundle "Valloric/YouCompleteMe", { 'build' : { 'mac' : './install.sh --clang-completer', 'unix' : './install.sh --clang-completer' }}

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
NeoBundle "mattn/gist-vim"
NeoBundle "junegunn/vim-github-dashboard"

" ----------------------------------------
" Snippets, Templates
" ----------------------------------------

NeoBundle "SirVer/ultisnips"

" ----------------------------------------
" Commands
" ----------------------------------------

NeoBundle "tpope/vim-repeat"

" ----------------------------------------
" Content Search & Selection (within file)
" ----------------------------------------

NeoBundle "gmarik/vim-visual-star-search"
NeoBundle "terryma/vim-expand-region"

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

NeoBundle "kana/vim-textobj-user"
NeoBundle "glts/vim-textobj-comment"
NeoBundle "kana/vim-textobj-function"
NeoBundle "kana/vim-textobj-underscore"

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

" ----------------------------------------
" Programming (languages)
" ----------------------------------------

" Polyglot (lots of languages)
NeoBundle "sheerun/vim-polyglot"

" JSON
NeoBundle "tpope/vim-jdaddy"

" JavaScript (common)
NeoBundleLazy "marijnh/tern_for_vim", { 'build': { 'others': 'npm install' }}
NeoBundleLazy "jelera/vim-javascript-syntax", {'autoload':{'filetypes':['javascript']}}

" PHP
NeoBundle "spf13/PIV"

" UML / diagramming
NeoBundleLazy "aklt/plantuml-syntax"

" Required:
call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

