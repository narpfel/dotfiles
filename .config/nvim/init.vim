set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim

let g:python3_host_prog='/usr/bin/python'

call vundle#begin('~/.config/nvim/bundle')

Plugin 'VundleVim/Vundle.vim'

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'vim-airline/vim-airline'

Plugin 'sheerun/vim-polyglot'
Plugin 'vim-python/python-syntax'
Plugin 'adimit/prolog.vim'
Plugin 'BeneCollyridam/futhark-vim'
Plugin 'hylang/vim-hy'

Plugin 'scrooloose/nerdtree'
" Doesn’t really work with `vim-devicons`.
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'
" For the `gc` text object. Could maybe replace NERDCommenter‽
Plugin 'tpope/vim-commentary'

Plugin 'autozimu/LanguageClient-neovim'
Plugin 'Shougo/deoplete.nvim'
Plugin 'zchee/deoplete-jedi'

Plugin 'ntpeters/vim-better-whitespace'

Plugin 'airblade/vim-gitgutter'

Plugin 'tpope/vim-surround'

Plugin 'tmux-plugins/vim-tmux-focus-events'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/vim-easy-align'

Plugin 'tpope/vim-obsession'

Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

Plugin 'KabbAmine/zeavim.vim'

" Always load last.
Plugin 'ryanoasis/vim-devicons'
call vundle#end()
filetype plugin indent on

set number
set colorcolumn=100

set scrolloff=5

colorscheme PygmentsDefault
set termguicolors

" Enable mouse support (scrolling etc.)
set mouse=a

" Line-wrap when using left/right arrow keys and h/l
set whichwrap+=<,>,h,l,[,]

" 4 character wide tab character
set ts=4
" expand tabs to spaces
set expandtab
" 4 charater indent
set shiftwidth=4
set softtabstop=4

" Required for operations modifying multiple buffers like rename.
" (LanguageClient)
set hidden

" Open preview panes on the bottom
set splitbelow

" Always show diagnostics sign column ( to prevent flickering/moving the text)
set signcolumn=yes

set lazyredraw
set inccommand=nosplit

let mapleader = "\<Space>"

" Use powerline fonts in airline
let g:airline_powerline_fonts = 1

" deoplete
let g:deoplete#enable_at_startup = 1
" automatically select first completion option on <Return>
set completeopt+=noinsert

function g:Multiple_cursors_before()
    call deoplete#custom#buffer_option('auto_complete', v:false)
endfunction

function g:Multiple_cursors_after()
    call deoplete#custom#buffer_option('auto_complete', v:false)
endfunction:

" Bigger NERDTree arrows
let g:NERDTreeDirArrowExpandable = '→'
let g:NERDTreeDirArrowCollapsible = '↓'

let g:polyglot_disabled = ['python']

augroup BufferEnter
    autocmd!

    " Close nvim iff NERDTree is the only window open
    autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    autocmd BufEnter * EnableStripWhitespaceOnSave
    autocmd BufEnter term://* startinsert
augroup END

let g:strip_whitespace_confirm = 0

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Python by default has '# ' as delimiter, which leads to two spaces.
let g:NERDCustomDelimiters = {
    \ 'python': { 'left': '#' },
    \ 'haskell': { 'left': '--' },
    \ 'fut':  { 'left': '--' },
    \ 'c': { 'left': '//' },
    \ }

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

let g:NERDTreeShowIgnoredStatus = 1

let g:NERDTreeMouseMode = 2

nmap <C-e> <Leader>c<Space>
vmap <C-e> <Leader>c<Space>gv
imap <C-e> <ESC><Leader>c<Space>li

let g:python_highlight_all = 1

let g:LanguageClient_serverCommands = {
    \ 'haskell': ['hie-wrapper', '--lsp'],
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'cpp': ['clangd'],
    \ 'c': ['clangd']
    \ }
let g:LanguageClient_useVirtualText = v:false
let g:LanguageClient_loggingFile = '/tmp/language-client-log'
let g:LanguageClient_settingsPath = '~/.config/language-client/config.json'

nnoremap <silent> <Leader>lp :call LanguageClient_contextMenu()<CR>
nnoremap <silent> <Leader>lh :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> <Leader>lg :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <Leader>lr :call LanguageClient#textDocument_rename()<CR>
nnoremap <silent> <Leader>lf :call LanguageClient#textDocument_formatting()<CR>
nnoremap <silent> <Leader>lb :call LanguageClient#textDocument_references()<CR>
nnoremap <silent> <Leader>la :call LanguageClient#textDocument_codeAction()<CR>
nnoremap <silent> <Leader>ls :call LanguageClient#textDocument_documentSymbol()<CR>

command! W w
command! Qa qa
command! Q q
command! Wqa wqa
command! Wq wq

set autoread

inoremap <expr><C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr><Down> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr><C-k> pumvisible() ? "\<C-p>" : "\<C-j>"
inoremap <expr><Up> pumvisible() ? "\<C-p>" : "\<Up>"

vnoremap > >gv
vnoremap < <gv
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
" Go Back to last i position (e. g. after scrolling)
nnoremap gb g;


function! SyntaxItem()
  return synIDattr(synID(line("."),col("."),1),"name")
endfunction

" Move line with <C-Up> and <C-Down>
nnoremap <C-Down> :m+<CR>==
nnoremap <C-Up> :m-2<CR>==
inoremap <C-Down> <Esc>:m+<CR>==gi
inoremap <C-Up> <Esc>:m-2<CR>==gi
vnoremap <C-Down> :m '>+1<CR>gv=gv
vnoremap <C-Up> :m '<-2<CR>gv=gv

" Also move line with <A-j> and <A-k>
nnoremap <A-j> :m+<CR>==
nnoremap <A-k> :m-2<CR>==
inoremap <A-j> <Esc>:m+<CR>==gi
inoremap <A-k> <Esc>:m-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Select by line with <S-Up> and <S-Down>
nnoremap <S-Down> v<Down>
nnoremap <S-Up> v<Up>
inoremap <S-Down> <Esc>v<Down>
inoremap <S-Up> <Esc>v<Up>
vnoremap <S-Down> <Down>
vnoremap <S-Up> <Up>

inoremap <A-Up> <Esc><Up>a
inoremap <A-Down> <Esc><Down>a

" alacritty maps `<C-Enter>` to `<F36>` to close autocomplete popup menu with
" one key stroke
nnoremap <F36> o
inoremap <F36> <Esc>o

" Remove function call surrounding cursor.
nmap dsf ds(dB

augroup AutoFoldHaskell
    autocmd!

    autocmd FileType haskell
        \ set foldmethod=expr |
        \ set foldexpr=getline(v:lnum)=~'^\\s*{\\?\\s*--'
augroup END

" `<C-ö>` is mapped to `<F35>` in Alacritty.
nnoremap <silent> <F35> :TmuxNavigatePrevious<Cr>
tnoremap <silent> <F35> <C-\><C-n>:TmuxNavigatePrevious<Cr>

" tnoremap <silent> <Esc> <C-\><C-n>
tnoremap <silent> <C-h> <C-\><C-n>:TmuxNavigateLeft<Cr>
tnoremap <silent> <C-j> <C-\><C-n>:TmuxNavigateDown<Cr>
tnoremap <silent> <C-k> <C-\><C-n>:TmuxNavigateUp<Cr>
tnoremap <silent> <C-l> <C-\><C-n>:TmuxNavigateRight<Cr>
tnoremap <C-Esc> <C-\><C-n>

nmap <leader>z <Plug>Zeavim
vmap <leader>z <Plug>ZVVisSelection
nmap gz <Plug>ZVOperator
nmap <leader><leader>z <Plug>ZVKeyDocset
