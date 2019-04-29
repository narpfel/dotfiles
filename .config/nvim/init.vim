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
Plugin 'BeneCollyridam/futhark-vim'

Plugin 'scrooloose/nerdtree'
" Doesn’t really work with `vim-devicons`.
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'

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

" Use powerline fonts in airline
let g:airline_powerline_fonts = 1

" deoplete
let g:deoplete#enable_at_startup = 1
" automatically select first completion option on <Return>
set completeopt+=noinsert

autocmd BufEnter * EnableStripWhitespaceOnSave
let g:strip_whitespace_confirm = 0

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
let g:NERDCustomDelimiters = {
    \ 'python': { 'left': '#' },
    \ 'haskell': { 'left': '--' },
    \ 'fut':  { 'left': '--' },
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
let g:LanguageClient_diagnosticsEnable = v:false
let g:LanguageClient_loggingFile = '/tmp/language-client-log'

command! Wsudo w !sudo tee % > /dev/null

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

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

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

" alacritty maps <C-Enter> to <F36> to close autocomplete popup menu with onee
" key stroke
nnoremap <F36> o
inoremap <F36> <Esc>o
