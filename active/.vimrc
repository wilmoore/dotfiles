""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" general
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"
" Be iMproved
"

set nocompatible

"
" filetype off -- required for vundle to function properly
"

filetype off

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"
" configure vundle paths
"

" do only when `vim_starting`:
" mitigates weird reloading errors (i.e. unable to find color schemes)
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/vundle/
  call vundle#rc()
endif

" let Vundle manage Vundle (required)
Bundle 'gmarik/vundle'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" syntax highlighting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" enable/disable syntax highlighting
syntax on
syntax enable

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" clipboard
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use system clipboard
set clipboard=unnamed

Bundle "YankRing.vim"
let g:yankring_history_dir = '~/.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" common bundles
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Programming
Bundle 'Valloric/YouCompleteMe'
Bundle 'marijnh/tern_for_vim'
Bundle 'jQuery'
Bundle 'gh:vim-ruby/vim-ruby'
Bundle 'rails.vim'
Bundle 'jnwhiteh/vim-golang'
Bundle 'tpope/vim-dispatch'
Bundle 'editorconfig-vim'
Bundle 'epmatsw/ag.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'mmalecki/vim-node.js'
Bundle 'oinksoft/npm.vim'
Bundle 'JavaScript-Indent'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'tpope/vim-eunuch'
Bundle 'skammer/vim-css-color'
Bundle 'groenewege/vim-less'
Bundle 'terryma/vim-expand-region'
Bundle 'Tagbar'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'mru.vim'
Bundle 'wting/rust.vim'
Bundle 'mattboehm/vim-unstack'
Bundle 'jimenezrick/vimerl'

" Markdown
Bundle "Markdown"
Bundle 'itspriddle/vim-marked'
au BufRead,BufNewFile *.md set filetype=markdown

" shell
Bundle 'shougo/vimproc'
Bundle 'shougo/vimshell'

" completion
Bundle 'ervandew/supertab'

" Git integration
Bundle "git.zip"
Bundle 'tpope/vim-fugitive'

" Github integration
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
let g:gist_post_private = 1

" (HT|X)ml tool
"Bundle "ragtag.vim"

" Utility
Bundle 'Lokaltog/vim-easymotion'
Bundle "repeat.vim"
Bundle "surround.vim"
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'matchit.zip'
Bundle "SuperTab"
Bundle "file-line"
Bundle "godlygeek/tabular"
Bundle "kien/ctrlp.vim"
Bundle "kshenoy/vim-signature"
Bundle "Shougo/unite.vim"
Bundle "mivok/vimtodo"

" server (nginx)
Bundle "nginx.vim"

" FuzzyFinder
Bundle "L9"
Bundle "FuzzyFinder"

" Navigation
Bundle "http://github.com/gmarik/vim-visual-star-search.git"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" commenting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" auto-comment
:set formatoptions+=ro

"
" tComment
"

" install
Bundle "tComment"

" key bindings
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" file type based indentation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" turn on file type based indentation for all file types
" filetype plugin indent on
" disabling this until I can get rid of the "Sourcing html indent"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" filetype overrides
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd! BufRead,BufNewFile *.jbuilder,Gemfile,Rakefile,Procfile,Guardfile setf ruby
au BufRead,BufNewFile *.thor set filetype=ruby
au BufRead,BufNewFile Guardfile set filetype=ruby
au BufRead,BufNewFile */nginx/*.conf set filetype=nginx
au BufRead,BufNewFile *.jbuilder setf ruby
au BufRead,BufNewFile *.jeco setf html
au BufRead,BufNewFile *.jss set filetype=css
au BufRead,BufNewFile *.hbs set filetype=mustache

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" display
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" search
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set hlsearch
set incsearch

" clear search highlight
nnoremap <space> :nohlsearch<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
" Turn backup off, since most stuff is in source control
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" mouse
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
set mouse=a
set ttym=xterm2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" keyboard
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" <Ctrl-C> -- copy selected to system clipboard (see: " http://vim.wikia.com/wiki/Quick_yank_and_paste)
vmap <C-C> "*y

" <Ctrl-A> -- visually select all and copy to system clipboard
map <C-A> ggvG$"*y<C-o><C-o>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" editing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" <Ctrl-J> -- split line on first space
nmap <C-J> f r<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" formatting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" unix line endings (why would you not?)
if &modifiable
  set ff=unix
endif

" do not wrap
set nowrap

" Wrap lines at convenient points
set linebreak

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" color in terminal
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" when not running in GUI mode
if !has('gui_running')
  set t_Co=256
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" color scheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim colorscheme pack
Bundle 'flazz/vim-colorschemes'

" configure color scheme
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark
colorscheme solarized

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"
" gui font (i.e. MacVIM)
"

" should match the setting in your terminal for consistency
if has("gui_running")
  set guifont=Monaco:h14
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" gui (general)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" when running in GUI mode
if has("gui_running")
  set guioptions-=T
  set guioptions+=e
  set guitablabel=%M\ %t
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" encodings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

 " Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" file types
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use Unix as the standard file type
set ffs=unix,dos,mac

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" testing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" <leader>t runs tests (make test)
map <leader>t :make test<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" editing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" <leader>pp toggles paste mode
map <leader>pp :setlocal paste!<cr>

" <leader>ss toggles spell checking
map <leader>ss :setlocal spell!<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Remember info about open buffers on close
set viminfo^=%

" Specify the behavior when switching between buffers
" http://stackoverflow.com/a/6853779/128346
set switchbuf=useopen,usetab,newtab
set stal=2

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" quickfix
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" automatically opens the quickfix window after :Ggrep (or any command with `grep` in the name)
" https://github.com/tpope/vim-fugitive/blob/master/README.markdown#faq

autocmd QuickFixCmdPost *grep* nested cwindow

" automatically close the quick fix window when leaving a file (will close vim if the quickfix window is the only visible window/tab).
" http://stackoverflow.com/a/7477056/128346

aug QFClose
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&buftype") == "quickfix"|q|endif
aug END

" Quick fix toggle
" http://learnvimscriptthehardway.stevelosh.com/chapters/38.html

nnoremap <leader>q :call QuickfixToggle()<cr>

let g:quickfix_is_open = 0

function! QuickfixToggle()
    if g:quickfix_is_open
        cclose
        let g:quickfix_is_open = 0
        execute g:quickfix_return_to_window . "wincmd w"
    else
        let g:quickfix_return_to_window = winnr()
        copen
        let g:quickfix_is_open = 1
    endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" fugitive.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Github domains configuration
let g:fugitive_github_domains = ['http://github.webapps.rr.com']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" open all the things
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" open url under cursor
map gu :!open <cfile><cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" git
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" [goto] Git Conflict
nmap gc /^<<<<<<< HEAD$<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" nerdtree.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'scrooloose/nerdtree'

let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
let NERDTreeWinSize=26

" <leader>f invokes NERDTreeFind
nmap <leader>f :NERDTreeFind<cr>

" default window size
let g:NERDTreeWinSize = 40

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" timeout
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set ttimeoutlen=50

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"
" Reload vimrc whenever a vim config file is modified
"

augroup reload_vimrc
  autocmd!
  autocmd bufwritepost $MYVIMRC source $MYVIMRC
  autocmd bufwritepost ~/.vim/* source $MYVIMRC
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" key bindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" make C-<enter> act like <esc> and C-c (obviously you want to have mapped CAPSLOCK to control)
:inoremap <C-[> <esc>

" $MYVIMRC reload
nmap <Leader>rc :source $MYVIMRC<CR>

" $MYVIMRC open buffer for editing in new tab/buffer
nmap <Leader>rt :tabnew $MYVIMRC<CR>

" $MYVIMRC open buffer for editing in current tab/buffer
nmap <Leader>re :e $MYVIMRC<CR>

" take off the training wheels
:inoremap  <Up>     <nop>
:inoremap  <Down>   <nop>
:inoremap  <Left>   <nop>
:inoremap  <Right>  <nop>
:noremap   <Up>     <nop>
:noremap   <Down>   <nop>
:noremap   <Left>   <nop>
:noremap   <Right>  <nop>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" statusline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" airline plugin
Bundle 'bling/vim-airline'

" custom theme for airline
Bundle 'paranoida/vim-airlineish'
let g:airline_theme = 'airlineish'

" always show status line
set laststatus=2

" theme
let g:airline_theme = 'dark'

" extensions
let g:airline#extensions#tabline#enabled    = 1
let g:airline#extensions#branch#enabled     = 1
let g:airline#extensions#syntastic#enabled  = 1
let g:airline#extensions#bufferline#enabled = 1

" fonts & symbols
let g:airline_left_sep          = '▶'
let g:airline_right_sep         = '◀'
let g:airline_linecolumn_prefix = '§'
let g:airline_paste_symbol      = 'Þ'
let g:airline_readonly_symbol   = 'Ʀ'
let g:airline_fugitive_prefix   = '⎇ '

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Menus
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set wildmode=longest,list,full

" show command complition menu (Enable ctrl-n and ctrl-p to scroll thru matches)
set wildmenu

" stuff to ignore when tab completing
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" scrolling
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" begin scrolling N before top/bottom margins
set scrolloff=0
set sidescrolloff=15
set sidescroll=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File types settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" CSS (tab width 2 chr)
autocmd FileType css set et
autocmd FileType css set sw=2
autocmd FileType css set ts=2
autocmd FileType css set sts=2

" JavaScript (tab width 2 chr)
autocmd FileType javascript set et
autocmd FileType javascript set sw=2
autocmd FileType javascript set ts=2
autocmd FileType javascript set sts=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" line numbers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" turn on line numbering
set number

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" indent
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" indent
set autoindent
set smartindent

" sane editing (tabs)
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab

" convert all typed tabs to spaces
set expandtab

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tabs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Maximum number of tabs to display
set tabpagemax=50

" Useful mappings for managing tabs (Vim 7 specific mappings)
if version >= 700
  nnoremap <C-t> :tabnew<cr>
  nnoremap <C-l> :tabnext<cr>
  nnoremap <C-h> :tabprevious<cr>
endif

" opens a new tab edit the file whose name is under or after the cursor
:map gt :tabedit <cfile><CR>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" sounds
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" disable beeping (aka "bell") and window flashing
" http://vim.wikia.com/wiki/Disable_beeping
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" on focus lost
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" auto-save all vim buffers when focus is lost (http://unix.stackexchange.com/a/75066)
autocmd BufLeave,FocusLost,VimResized * silent! wall

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" sublime (multiple selections) mode
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"
" install 'vim-multiple-cursors' plugin
"

" https://github.com/terryma/vim-multiple-cursors
" http://www.youtube.com/watch?v=Umb59mMvCxA
Bundle "terryma/vim-multiple-cursors"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vcs diff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" http://www.vim.org/scripts/script.php?script_id=4487
" Bundle "mhinz/vim-signify"
let g:signify_mapping_toggle_highlight = '<leader>gh'
