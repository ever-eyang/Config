set nu
syntax enable
filetype plugin indent on
set noswapfile

set background=light
let g:solarized_termcolors=256
let g:solarized_termtrans = 1 
colorscheme solarized
"hi Visual cterm=bold ctermbg=DarkCyan ctermfg=White

autocmd Filetype * DoMatchParen
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set cino=i-s
set backspace=indent,eol,start

autocmd Filetype vue syntax sync fromstart

noremap <A-Left>  :-tabmove<cr>
noremap <A-Right> :+tabmove<cr>
