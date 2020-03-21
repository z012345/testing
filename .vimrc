set nu
""""""""""""""""""""""""
" neobundle
if 0 | endif

if &compatible 
  set nocompatible
endif

set runtimepath+=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

call neobundle#end()

filetype plugin indent on
NeoBundleCheck
"""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
"""""""""""""""""""""""""""""""""

" Plugins will be downtoloaded
call plug#begin('~/.vim/autoload')

" vim-plug
Plug 'LnL7/vim-nix'
"  NeoBundle
NeoBundle 'LnL7/vim-nix'
"   Vundle
Plugin 'LnL7/vim-nix'

call plug#end()
execute pathogen#infect()

