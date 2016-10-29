" An example for a vimrc file.

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif
" Vim sample script ends here

" see:
" http://stackoverflow.com/questions/12230290/vim-errors-on-vim-startup-when-run-in-fish-shell
set shell=/bin/sh

set nobackup
set title
set expandtab
set number
set showmatch
set smartindent
set tabstop=2
set shiftwidth=2
set smarttab
set nowrap
set ignorecase
set smartcase

" set swapfiles directory
set directory=$HOME/.vimbackup

if has("mac")
  colorscheme elflord
else
  colorscheme pablo
endif

if has('vim_starting')
  set rtp+=~/.vim/plugged/vim-plug
  if !isdirectory(expand('~/.vim/plugged/vim-plug'))
    echo 'install vim-plug...'
    call system('mkdir -p ~/.vim/plugged/vim-plug')
    call system('git clone https://github.com/junegunn/vim-plug.git ~/.vim/plugged/vim-plug/autoload')
  endif
endif

" vimgrep, grep, Grep opens quickfix-window automatically
autocmd QuickFixCmdPost *grep* cwindow

" run `:so ~/.vimrc` and `:PlugInstall`
" after adding a new plug.
call plug#begin('~/.vim/plugged')
  Plug 'junegunn/vim-plug',
    \ {'dir': '~/.vim/plugged/vim-plug/autoload'}

  "" Utils
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'tpope/vim-endwise'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'junegunn/vim-easy-align'
  Plug 'scrooloose/syntastic'
  Plug 'vim-scripts/grep.vim'

  "" Languages
  Plug 'elixir-lang/vim-elixir'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-haml'
  Plug 'fatih/vim-go'
  Plug 'othree/yajs.vim'
  Plug 'mxw/vim-jsx'
  Plug 'elmcast/elm-vim'
  " markdown
  Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'
  Plug 'kannokanno/previm'
  Plug 'tyru/open-browser.vim'

  Plug 'dag/vim-fish'

call plug#end()

"" vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1

"" vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"" vim-markdown
let g:vim_markdown_folding_disabled = 1

"" grep.vim
nnoremap <expr> gr ':Rgrep<CR>'
" use jvgrep
if executable('jvgrep')
  set grepprg=jvgrep
endif
let Grep_Default_Filelist = '*.rb *.scss *.css *.js *.jsx *.erb *.rake *.haml *.jbuilder'
let Grep_Skip_Dirs = '.svn .git vendor spec/cassettes'
let Grep_Default_Options = '-I' " ignore binary files

"" vim-jsx
" enable jsx syntax highlight for *.js files
let g:jsx_ext_required = 0

"" ctrlp
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard | grep -v "spec/cassettes/"']
