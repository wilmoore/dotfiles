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

" ----------------------------------------
" @NeoBundle Configuration
" ----------------------------------------

NeoBundleFetch "Shougo/neobundle.vim"

" ----------------------------------------
" Enhance ga/:ascii
" ----------------------------------------

NeoBundle "tpope/vim-characterize"

" ----------------------------------------
" Buffer Settings
" ----------------------------------------

NeoBundle "dietsche/vim-lastplace"

" ----------------------------------------
" Color Schemes, Themes
" ----------------------------------------

" Spacegray Theme (https://github.com/ajh17/Spacegray.vim)
NeoBundle "ajh17/Spacegray.vim"

" ----------------------------------------
" Content Search & Selection (within file)
" ----------------------------------------

NeoBundle "thinca/vim-visualstar"

" ----------------------------------------
" Editing
" ----------------------------------------

" NOTE: incompatible with `gabrielelana/vim-markdown` unless configured with `let g:markdown_enable_mappings = 0`
" SEE: https://github.com/jiangmiao/auto-pairs/issues/34
NeoBundle "jiangmiao/auto-pairs"
NeoBundle "tomtom/tcomment_vim" " NOTE: vim-commentary did not handle visually selected lines well.
NeoBundle "mjbrownie/swapit"
NeoBundle "epmatsw/ag.vim"
NeoBundle "machakann/vim-sandwich"

" ----------------------------------------
" Documentation
" ----------------------------------------

" Markdown
NeoBundle "gabrielelana/vim-markdown"
NeoBundle "itspriddle/vim-marked"

" ----------------------------------------
" Documentation
" ----------------------------------------

NeoBundle "rizzatti/dash.vim"

" ----------------------------------------
" Formatting
" ----------------------------------------

" generic formatting
NeoBundle "Chiel92/vim-autoformat"
NeoBundle "editorconfig/editorconfig-vim"
NeoBundle "AndrewRadev/splitjoin.vim"
NeoBundle "scrooloose/syntastic"
NeoBundle "SQLUtilities"
NeoBundle "tpope/vim-sleuth"

" ----------------------------------------
" Infrastructure as code
" ----------------------------------------

NeoBundle "hashivim/vim-terraform"

" ----------------------------------------
" Navigation, Exploration
" ----------------------------------------

NeoBundle "bogado/file-line"
NeoBundle "easymotion/vim-easymotion"
NeoBundle "netrw.vim"
NeoBundle "scrooloose/nerdtree"
NeoBundle "Shougo/unite.vim"
NeoBundle "tpope/vim-dispatch"
NeoBundle "tpope/vim-projectionist"
NeoBundle "tyru/open-browser.vim"
NeoBundle "Xuyuanp/nerdtree-git-plugin"
NeoBundle "yegappan/mru"
NeoBundle "zenbro/mirror.vim"

" ----------------------------------------
" Programming (languages)
" ----------------------------------------

" Polyglot (lots of languages)
NeoBundle "sheerun/vim-polyglot"
NeoBundle "tpope/vim-endwise"
NeoBundle "calebsmith/vim-lambdify"

" Cocoa
NeoBundle "msanders/cocoa.vim"

" Flatbuffers
NeoBundle "dcharbon/vim-flatbuffers"

" HTML
NeoBundle "rstacruz/sparkup"
NeoBundle "alvan/vim-closetag"

" JavaScript
NeoBundle "Valloric/YouCompleteMe", { 'build' : { 'mac' : './install.sh --clang-completer --system-libclang --omnisharp-completer --gocode-completer' } }
NeoBundle "marijnh/tern_for_vim", { "build": { "mac": "npm install" } }

" JSON Schema
NeoBundle "elzr/vim-json"

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
" Source Control (git)
" ----------------------------------------

NeoBundle "tpope/vim-fugitive"
NeoBundle "rhysd/committia.vim"

" ----------------------------------------
" Status Line
" ----------------------------------------

NeoBundle "bling/vim-airline"

" ----------------------------------------
" Unicode
" ----------------------------------------

NeoBundle "unicode.vim"

" ----------------------------------------
" Visual Indicators
" ----------------------------------------

NeoBundle "mhinz/vim-signify"
NeoBundle "kien/rainbow_parentheses.vim"

" ----------------------------------------
" Workflow
" ----------------------------------------

NeoBundle "krisajenkins/vim-pipe"

" ----------------------------------------
" ----------------------------------------

" Required:
call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
