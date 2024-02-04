set nocompatible
filetype off

let g:python3_host_prog='/usr/bin/python'

let g:polyglot_disabled = ['python']

" apparently breaks `vim.filetype.add`
let g:polyglot_disabled = ['ftdetect']
let g:filetype_pl = "prolog"

call plug#begin('~/.config/nvim/bundle')

Plug 'junegunn/vim-plug'

Plug 'christoomey/vim-tmux-navigator'

Plug 'vim-airline/vim-airline'

Plug 'sheerun/vim-polyglot'
Plug 'vim-python/python-syntax'
Plug 'adimit/prolog.vim'
Plug 'BeneCollyridam/futhark-vim'
Plug 'hylang/vim-hy'

Plug 'scrooloose/nerdcommenter'
" For the `gc` text object. Could maybe replace NERDCommenter‽
Plug 'tpope/vim-commentary'

Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile', 'for': 'json'}
Plug 'fannheyward/coc-rust-analyzer', {'do': 'yarn install --frozen-lockfile'}
Plug 'clangd/coc-clangd', {'do': 'yarn install --frozen-lockfile'}
Plug 'voldikss/coc-cmake', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

Plug 'ntpeters/vim-better-whitespace'

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-surround'

Plug 'tmux-plugins/vim-tmux-focus-events'

Plug 'terryma/vim-multiple-cursors'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/vim-easy-align'

Plug 'tpope/vim-obsession'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'lfv89/vim-interestingwords'

" Always load last.
Plug 'ryanoasis/vim-devicons'
call plug#end()

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

set cursorline

set ignorecase
set smartcase

let mapleader = "\<Space>"

" Use powerline fonts in airline
let g:airline_powerline_fonts = 1

augroup BufferEnter
    autocmd!

    autocmd FileType,BufEnter * EnableStripWhitespaceOnSave
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

nmap <C-e> <Leader>c<Space>
vmap <C-e> <Leader>c<Space>gv
imap <expr><C-e> pumvisible() ? "\<C-e>" : "\<Esc><Leader>c<Space>a"

let g:python_highlight_all = 1
let g:interestingWordsGUIColors = ['#aeee00', '#ff0000', '#9999ff', '#b88823', '#ffa724', '#bb7cab']

let g:ctrlp_user_command = 'fd --hidden
    \ --exclude .git/ --exclude ''*.pyc'' --exclude ''venv*''
    \ --type f --full-path %s --fixed-strings'

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> <Leader>la <Plug>(coc-codeaction-line)
nnoremap <silent><nowait> <Leader>lp :<C-u>CocList commands<cr>

nmap <silent> <Leader>lr <Plug>(coc-rename)

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

lua <<EOF
require("narpfel.ts_config")
-- system-specific configuration
-- `narpfel.local` is gitignored and may not be present
pcall(require, "narpfel.local")
EOF
