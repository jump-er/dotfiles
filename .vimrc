" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set rtp+=/home/jumper/.vim/bundle/Vundle.vim
call vundle#begin()            
    Bundle 'bling/vim-airline' 
    Bundle 'scrooloose/nerdtree'
    Bundle 'voldikss/vim-floaterm'  
call vundle#end()              

set encoding=utf8              
set ffs=unix,dos,mac           

set expandtab                  
set smarttab
set tabstop=4                  
set softtabstop=4              
set shiftwidth=4               

set background=dark            
colorscheme desert             
syntax on
  
set mouse=

set ignorecase
set smartcase
set hlsearch
set incsearch

" nerdtree
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeChDirMode=2

" floaterm
let g:floaterm_keymap_toggle = '<F4>'
let g:floaterm_width = 100
let g:floaterm_height = 30
