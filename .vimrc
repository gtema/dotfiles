syntax on
" Force the cursor onto a new line after 80 characters
" set textwidth=80
" However, in Git commit messages, let’s make it 72 characters
autocmd FileType gitcommit setlocal spell textwidth=72
" Colour the 81st (or 73rd) column so that we don’t type over our limit
set colorcolumn=+1
