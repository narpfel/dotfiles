set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim

call vundle#begin('~/.config/nvim/bundle')

Plugin 'VundleVim/Vundle.vim'

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'vim-airline/vim-airline'

Plugin 'sheerun/vim-polyglot'
Plugin 'vim-python/python-syntax'
Plugin 'adimit/prolog.vim'

Plugin 'scrooloose/nerdtree'
" Doesn’t really work with `vim-devicons`.
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'

Plugin 'Shougo/deoplete.nvim'

Plugin 'neovimhaskell/haskell-vim'
Plugin 'eagletmt/neco-ghc'

Plugin 'sebastianmarkow/deoplete-rust'
Plugin 'zchee/deoplete-clang'
Plugin 'zchee/deoplete-jedi'

Plugin 'ntpeters/vim-better-whitespace'

Plugin 'airblade/vim-gitgutter'

Plugin 'tpope/vim-surround'

Plugin 'tmux-plugins/vim-tmux-focus-events'

" Always load last.
Plugin 'ryanoasis/vim-devicons'
call vundle#end()
filetype plugin indent on

set number
set colorcolumn=100

colorscheme PygmentsDefault
set termguicolors

" Enable mouse support (scrolling etc.)
set mouse=a

" 4 character wide tab character
set ts=4
" expand tabs to spaces
set expandtab
" 4 charater indent
set shiftwidth=4
set softtabstop=4

" Use powerline fonts in airline
let g:airline_powerline_fonts = 1

" deoplete
let g:deoplete#enable_at_startup = 1
" automatically select first completion option on <Return>
set completeopt+=noinsert

let g:necoghc_use_stack = 0

let g:necoghc_enable_detailed_browse = 1

autocmd BufEnter * EnableStripWhitespaceOnSave

" Open NERDTree if not editing a git commit message
:autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | endif

" Bigger NERDTree arrows
let g:NERDTreeDirArrowExpandable = '→'
let g:NERDTreeDirArrowCollapsible = '↓'

let g:polyglot_disabled = ['python']

" Close nvim iff NERDTree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Python by default has '# ' as delimiter, which leads to two spaces.
let g:NERDCustomDelimiters = { 'python': { 'left': '#' } }

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

nmap <C-e> <Leader>c<Space>
vmap <C-e> <Leader>c<Space>gv
imap <C-e> <ESC><Leader>c<Space>li

let g:deoplete#sources#rust#racer_binary='/usr/bin/racer'

let g:deoplete#sources#clang#libclang_path='/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header='/usr/lib/clang'

let g:python_highlight_all = 1

" Show folder symbols (NERDTree & devicons) → This kills the nerdtree-git-plugin colour highlighting
" let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" let g:DevIconsEnableFoldersOpenClose = 1

command! Wsudo w !sudo tee % > /dev/null

set autoread
