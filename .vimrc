vim9script

# Use Vim settings, rather than Vi settings (much better!).
# This must be first, because it changes other options as a side effect.
set nocompatible

syntax on

# Don't use Ex mode, use Q for formatting
map Q gq

# CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
# so that you can undo CTRL-U after inserting a line break.
imap <C-U> <C-G>u<C-U>

set ambiwidth=double
set backspace=indent,eol,start
set encoding=utf-8
set expandtab
set history=1000
set hlsearch
set ignorecase
set incsearch
set nobackup
set noswapfile
set nowrap
set nowritebackup
set number
set ruler
set shiftwidth=2
set showcmd
set showmatch
set signcolumn=yes
set smartcase
set smartindent
set smarttab
set tabstop=2
set title
set updatetime=300

if has('vim_starting')
  set rtp+=~/.vim/plugged/vim-plug
  if !isdirectory(expand('~/.vim/plugged/vim-plug'))
    echo 'install vim-plug...'
    call system('mkdir -p ~/.vim/plugged/vim-plug')
    call system('git clone https://github.com/junegunn/vim-plug.git ~/.vim/plugged/vim-plug/autoload')
  endif
endif

g:clipboard = {
  name: 'WslClipboard',
  copy: {
    '+': 'clip.exe',
    '*': 'clip.exe',
  },
  paste: {
    '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
  },
  cache_enabled: 0,
}

# vimgrep, grep, Grep opens quickfix-window automatically
autocmd QuickFixCmdPost *grep* cwindow

# Run `:so ~/.vimrc` and `:PlugInstall` whenever adding a new plug.
legacy call plug#begin('~/.vim/plugged')
legacy Plug 'junegunn/vim-plug', { 'dir': '~/.vim/plugged/vim-plug/autoload' }
legacy Plug 'ayu-theme/ayu-vim'
legacy Plug 'nathanaelkane/vim-indent-guides'
legacy Plug 'ntpeters/vim-better-whitespace'
legacy Plug 'vim-scripts/grep.vim'
legacy Plug 'tpope/vim-surround'
legacy Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
legacy Plug 'junegunn/fzf.vim'
legacy Plug 'digitaltoad/vim-pug'
legacy Plug 'yegappan/lsp'
legacy call plug#end()

# ayu
g:ayucolor = "mirage"
colorscheme ayu

# vim-indent-guides
g:indent_guides_enable_on_vim_startup = 1

# grep.vim
nmap <expr> gr ':Rgrep<CR>'
if executable('rg')
  set grepprg=rg
endif
g:Grep_Skip_Dirs       = join(['.svn', '.git', 'log', 'tags', 'coverage', 'vendor', 'node_modules', 'dist'], ' ')
g:Grep_Default_Options = '-I' # ignore binary files

# fzf.vim
nmap <C-p> :GFiles<CR>

# LSP
const lspOpts = {
  autoHighlightDiags:   v:true,
  showDiagOnStatusLine: v:true,
}
autocmd User LspSetup g:LspOptionsSet(lspOpts)
final lspServers = [
  # for TypeScript/JavaScript
  # Ensure 'typescript-language-server' is available in your system $PATH:
  # e.g., `npm i -g typescript-langauge-server`
  {
    name: 'typescriptlang',
    filetype: ['typescript', 'javascript', 'typescriptreact', 'javascriptreact'],
    path: 'typescript-language-server',
    args: ['--stdio'],
  }
]
const oxlintPath = getcwd() .. '/node_modules/.bin/oxlint'
if executable(oxlintPath)
  lspServers->add({
    name: 'oxlint',
    filetype: ['typescript', 'javascript', 'typescriptreact', 'javascriptreact'],
    path: oxlintPath,
    args: ['--lsp'],
    initializationOptions: {
      settings: { typeAware: true },
    },
  })
endif
autocmd User LspSetup g:LspAddServer(lspServers)

# LSP commands
nmap <silent> gd :LspGotoImpl<CR>
nmap <silent> gl :LspShowReferences<CR>
nmap <silent> K :LspHover<CR>
nmap <silent> <leader>rn :LspRename<CR>

augroup TSAutoOrganize
  autocmd!
  autocmd BufWritePre *.ts,*.tsx,*.js,*.jsx silent! LspOrganizeImports
augroup END
