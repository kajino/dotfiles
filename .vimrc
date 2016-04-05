set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
syntax on
set number
set clipboard+=unnamed

if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {
    \ 'build': {
    \     'windows': 'tools\\update-dll-mingw',
    \     'cygwin': 'make -f make_cygwin.mak',
    \     'mac': 'make -f make_mac.mak',
    \     'linux': 'make',
    \     'unix': 'gmake',
    \    },
    \ })

call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('scrooloose/nerdtree')
call dein#add('tomasr/molokai')
call dein#add('kchmck/vim-coffee-script')
call dein#add('posva/vim-vue')
call dein#add('JulesWang/css.vim')
call dein#add('cakebaker/scss-syntax.vim')
call dein#add('wavded/vim-stylus')
call dein#end()

syntax on
colorscheme molokai
highlight Normal ctermbg=none

au BufRead,BufNewFile *.coffee set filetype=coffee
au BufNewFile,BufReadPost *.coffee set shiftwidth=2 expandtab

nnoremap <silent><C-e> :NERDTreeToggle<CR>
