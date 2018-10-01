syntax on

colorscheme desert

set number
" %F(Full file path)
" %m(Shows + if modified - if not modifiable)
" %r(Shows RO if readonly)
" %<(Truncate here if necessary)
" \ (Separator)
" %=(Right align)
" %l(Line number)
" %v(Column number)
" %L(Total number of lines)
" %p(How far in file we are percentage wise)
" %%(Percent sign)
set statusline=%F%m%r%<\ %=%l,%v\ [%L]\ %p%%

" Change the highlighting so it stands out
hi statusline ctermbg=white ctermfg=black

" Make sure it always shows
set laststatus=2

set autoindent
set shiftwidth=2
set expandtab
set tabstop=2

filetype plugin indent on

" Requires Vim Indent Guides
" https://github.com/nathanaelkane/vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1      
