" How to install plugins:
" $ vim +PlugInstall +qall

set nocompatible

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf'
Plug 'itchyny/lightline.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'easymotion/vim-easymotion'
call plug#end()

" fzf
nnoremap <C-P> :FZF<CR>

" lightline.vim
let g:lightline = {
\   'colorscheme': 'dracula',
\}

" dracula/vim
let g:dracula_italic=0

" vim-easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap s <Plug>(easymotion-overwin-f)
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" netrw
nnoremap <C-N> :Vexplore .<CR>
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" UI
language en_US.UTF-8
set backspace=indent,eol,start
set clipboard^=unnamed,unnamedplus
set cursorline
set laststatus=2
set mouse=
set nowrap
set number
set numberwidth=5
set ruler
set showcmd
set showmatch
set splitbelow splitright
set ttimeoutlen=100
set wildmenu wildmode=longest:full,full

" Colors
syntax on
set background=dark
if has("termguicolors")
    set termguicolors
endif
set term=xterm-256color
colorscheme dracula

" Indentation & Tabs
set autoindent smartindent cindent
set expandtab smarttab tabstop=4 softtabstop=4 shiftwidth=4

" Search
set hlsearch incsearch ignorecase smartcase

" Performance
set lazyredraw
set ttyfast

" Miscellaneous
filetype plugin indent on
set autoread
set encoding=utf-8 fileencodings=utf-8
set hidden
set nobackup
set nofixeol
set noswapfile

" Key Mappings
map <Space> <Leader>
cnoremap w!! w !sudo tee > /dev/null %
cnoremap <C-N> <Down>
cnoremap <C-P> <Up>
inoremap <S-Tab> <C-V><Tab>
xnoremap < <gv
xnoremap > >gv
