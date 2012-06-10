call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax on
filetype plugin indent on

" Open NERDTree if no file opened
autocmd vimenter * if !argc() | NERDTree | endif
" Close NERDTree if last thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
