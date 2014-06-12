" ----------------------------------------
" To Evaluate
" ----------------------------------------

" vim-markdown
" https://github.com/gabrielelana/vim-markdown

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

NeoBundle "file-line"
NeoBundle "Shougo/unite.vim"
NeoBundle "easymotion"
NeoBundle "scrooloose/nerdtree"
NeoBundle "kien/ctrlp.vim"
NeoBundle "mru.vim"
NeoBundle "tpope/vim-projectionist"
NeoBundle "open-browser.vim"

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
NeoBundle "CSApprox"

" ----------------------------------------
" Completion
" ----------------------------------------

NeoBundle "Valloric/YouCompleteMe", { 'build' : { 'mac' : './install.sh --clang-completer', 'unix' : './install.sh --clang-completer' }}

" ----------------------------------------
" VCS
" ----------------------------------------

" Git
NeoBundle "git.zip"
NeoBundle "tpope/vim-fugitive"
NeoBundle "int3/vim-extradite"
NeoBundle "gitv"

" Github
NeoBundle "mattn/webapi-vim"
NeoBundle "mattn/gist-vim"
NeoBundle "junegunn/vim-github-dashboard"

" Mercurial
NeoBundle "hgrev"

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
NeoBundle "tpope/vim-commentary"
NeoBundle "delimitMate.vim"
NeoBundle "tpope/vim-eunuch"
NeoBundle "endwise.vim"
NeoBundle "sjl/gundo.vim"
NeoBundle "tpope/vim-surround"

" Contextual
NeoBundle "AndrewRadev/inline_edit.vim"
NeoBundle "chrisbra/NrrwRgn"
NeoBundle "mjbrownie/swapit"
NeoBundle "tpope/vim-speeddating"

" Formatting
NeoBundle "editorconfig-vim"
NeoBundle "splitjoin.vim"
NeoBundle "Syntastic"
NeoBundle "junegunn/vim-easy-align"

" Search & Replace
NeoBundle "epmatsw/ag.vim"

" ----------------------------------------
" Documentation
" ----------------------------------------

" Markdown
NeoBundle "Markdown"
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

" Required:
call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

