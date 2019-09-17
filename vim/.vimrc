" vimrc

set number
set relativenumber
set scrolloff=2
" set laststatus=2
set splitbelow

set fillchars+=vert:\ 

" netrw
" let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_winsize = 20
" let g:netrw_browse_split = 4
" augroup ProjectDrawer
  " autocmd!
  " autocmd VimEnter * :Vexplore
" augroup END

nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

autocmd FileType netrw setl bufhidden=delete

" Indentation
autocmd Filetype c          setlocal noexpandtab ts=8 sw=8 sts=8
autocmd Filetype cpp        setlocal noexpandtab ts=8 sw=8 sts=8
autocmd Filetype lua        setlocal expandtab   ts=2 sw=2 sts=2
autocmd Filetype python     setlocal expandtab   ts=4 sw=4 sts=4
autocmd Filetype sh         setlocal expandtab   ts=4 sw=4 sts=4
autocmd Filetype html       setlocal expandtab   ts=4 sw=4 sts=4
autocmd Filetype css        setlocal expandtab   ts=4 sw=4 sts=4
autocmd Filetype javascript setlocal expandtab   ts=4 sw=4 sts=4
autocmd Filetype php        setlocal expandtab   ts=4 sw=4 sts=4
autocmd Filetype erlang     setlocal expandtab   ts=4 sw=4 sts=4

call plug#begin('~/.vim/plugged')
" General
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug '907th/vim-auto-save'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-eunuch'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/supertab'

" HTML
Plug 'mattn/emmet-vim'

" C/C++
Plug 'vim-scripts/a.vim'
Plug 'Valloric/YouCompleteMe'

" fish
Plug 'dag/vim-fish'

" Nim
Plug 'zah/nim.vim'

call plug#end()

" AutoSave
let g:auto_save = 1
let g:auto_save_silent = 1

" Clang Complete
let g:clang_library_path = '/usr/lib/llvm-6.0/lib'

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
