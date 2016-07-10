" My Vimrc file
" author: ziat

" Enable syntax hightlighting.
syntax on

" Automatically indent when adding a curly bracket, etc.
set smartindent

" set tab
set tabstop=4
set shiftwidth=4


" Auto complete pathesis
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
" inoremap { {}<ESC>i
inoremap < <><ESC>i

inoremap { {<CR>}<ESC>kA<CR>
