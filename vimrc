set nocompatible              " required
filetype off                  " required
syntax on
set backspace=indent,eol,start
set encoding=utf-8
set nu

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" add all your plugins here
Plugin 'gmarik/Vundle.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


" plugin options and modifications
let python_highlight_all=1

"NERDTree
map <C-t> :NERDTreeTabsToggle<CR>
" autocmd VimEnter * NERDTreeToggle
autocmd VimEnter * NERDTreeTabsToggle
map <S-Right> :tabn<CR>
map <S-Left>  :tabp<CR>

" youcompleteme
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"split locations
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za


"PYTHON STUFF
"
" Python Indents
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix

" map F9 to save and run current buffer when python:
autocmd FileType python
    \ nnoremap <buffer> <leader>r :exec '!clear;python3' shellescape(@%, 1)<cr>

highlight BadWhitespace ctermbg=red guibg=red

" flag unnecessary whitespace in python
au BufNewFile,BufRead *.* match BadWhitespace /\s\s*$/

" python with virtualenv support
python3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  exec(open(activate_this).read(), {'__file__':activate_this})
EOF
