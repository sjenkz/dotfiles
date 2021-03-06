"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" File Specific Behaviour Facet
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundles
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'kchmck/vim-coffee-script'
Bundle 'JuliaLang/julia-vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto Commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Create file-specific indentation behaviour
autocmd FileType make set noexpandtab
autocmd FileType c set cindent
autocmd FileType haskell set ts=2
autocmd FileType haskell set sw=2
autocmd FileType ruby set ts=2
autocmd FileType ruby set sw=2
autocmd FileType xml set ts=2
autocmd FileType xml set sw=2
autocmd FileType html set ts=2
autocmd FileType html set sw=2
autocmd FileType yaml set ts=2
autocmd FileType yaml set sw=2
autocmd FileType julia set ts=2
autocmd FileType julia set sw=2
autocmd FileType python set ts=4
autocmd FileType python set sw=4
