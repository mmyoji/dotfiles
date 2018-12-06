set ambiwidth=double
set expandtab
set ignorecase
set nobackup
set nowrap
set number
set shiftwidth=2
set showmatch
set smartcase
set smartindent
set smarttab
set tabstop=2
set title

colorscheme elflord

if &compatible
  set nocompatible
endif

let s:dein_dir = expand('$HOME/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" Git clone from GitHub unles `dein.vim` exists
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif

  execute 'set runtimepath^=' . s:dein_repo_dir
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " Set dein.toml and dein_lazy.toml files' dir
  let s:toml_dir = expand('$HOME/.config/nvim')

  " Load plugins on-startup/lazy
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
  call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" Install uninstalled-plugins on startup
if has('vim_starting') && dein#check_install()
  call dein#install()
endif

""" For vim-indent-guides
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

""" ctags
nnoremap <C-]> g<C-]>
