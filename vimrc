#map <Left> <Nop>
#map <Right> <Nop>
#map <Up> <Nop>
#map <Down> <Nop>
imap <F6> <C-x><C-o>

" vim-plug plugins "
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
call plug#end()

" NERDTree Conf "
" Start NERDTree on vim start and focus on file
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Vimrc "
colorscheme onedark
syntax on
set number
set relativenumber
set ts=4
set ruler
set colorcolumn=81

