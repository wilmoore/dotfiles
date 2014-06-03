" ----------------------------------------
" To Evaluate
" ----------------------------------------

" vim-testdrive
" https://github.com/monokrome/vim-testdrive

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

" -------
" Plugins
" -------

" NeoBundle manages NeoBundle
NeoBundleFetch 'shougo/neobundle.vim'

" Shell, Terminal, Multiplex
NeoBundle 'shougo/vimproc', {'build': {'windows': 'make -f make_mingw32.mak', 'cygwin': 'make -f make_cygwin.mak', 'mac': 'make -f make_mac.mak', 'unix': 'make -f make_unix.mak'}}
NeoBundle 'shougo/vimshell'
NeoBundle "tpope/vim-dispatch"

" Navigation, Exploration
NeoBundle "file-line"
NeoBundle 'Shougo/unite.vim'
NeoBundle 'easymotion'
NeoBundle 'scrooloose/nerdtree'
NeoBundle "kien/ctrlp.vim"
NeoBundle "mru.vim"
NeoBundle "tpope/vim-projectionist"
NeoBundle "open-browser.vim"

" ASCII values
NeoBundle "tpope/vim-characterize"

" Status line
NeoBundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
NeoBundle 'stephenmckinney/vim-solarized-powerline'

" Visual Selection, Cursors
"   - https://github.com/terryma/vim-multiple-cursors
"   - http://www.youtube.com/watch?v=Umb59mMvCxA
NeoBundle "terryma/vim-multiple-cursors"
NeoBundle "myusuf3/numbers.vim"

" Visual Indicators
NeoBundle "nathanaelkane/vim-indent-guides"
NeoBundle "mhinz/vim-signify"

" Commands
NeoBundle "tComment"

" Color Schemes, Themes
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'CSApprox'

" VCS
"   Git
NeoBundle "git.zip"
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'int3/vim-extradite'
NeoBundle 'gitv'
"   Github
NeoBundle "mattn/webapi-vim"
NeoBundle "mattn/gist-vim"
NeoBundle 'junegunn/vim-github-dashboard'

" Completion
NeoBundle 'Valloric/YouCompleteMe', { 'build' : { 'mac' : './install.sh --clang-completer', 'unix' : './install.sh --clang-completer' }}

" Snippets, Templates
NeoBundle "SirVer/ultisnips"

" Editing
NeoBundle "delimitMate.vim"
NeoBundle "endwise.vim"
NeoBundle "sjl/gundo.vim"

" Editing (Contextual)
NeoBundle 'AndrewRadev/inline_edit.vim'
NeoBundle 'chrisbra/NrrwRgn'
NeoBundle 'mjbrownie/swapit'
NeoBundle 'tpope/vim-speeddating'

" Formatting
NeoBundle 'editorconfig-vim'
NeoBundle 'splitjoin.vim'
NeoBundle 'Syntastic'
NeoBundle 'junegunn/vim-easy-align'

" Search & Replace
NeoBundle 'epmatsw/ag.vim'

" Programming (languages)
"   Javascript, JSON
NeoBundle 'walm/jshint.vim'
NeoBundle 'tpope/vim-jdaddy'
NeoBundle 'elzr/vim-json'
NeoBundle 'jQuery'
NeoBundle 'pangloss/vim-javascript'
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
NeoBundle 'moll/vim-node'
NeoBundle 'ahayman/vim-nodejs-complete'
NeoBundle 'marijnh/tern_for_vim', { 'build': { 'others': 'npm install' }}
"   Go
NeoBundle 'jnwhiteh/vim-golang'
NeoBundle "fatih/vim-go"
"   CSS
NeoBundle 'skammer/vim-css-color'
"   LESS
NeoBundle 'groenewege/vim-less'
"   Rust
NeoBundle 'wting/rust.vim'
"   Erlang
NeoBundle 'jimenezrick/vimerl'
"   HTML
NeoBundle 'HTML-AutoCloseTag'

" Programming (debugging)
NeoBundle "mattboehm/vim-unstack"

" Markdown
NeoBundle "Markdown"
NeoBundle "itspriddle/vim-marked"

" Web Servers
NeoBundle "nginx.vim"

" Content (in-file) Searching
NeoBundle "gmarik/vim-visual-star-search"

" Required:
call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

