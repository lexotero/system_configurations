"""""""""""""""""""""""""""""""
" Vim configuration by aotero "
"""""""""""""""""""""""""""""""

" No bells
set noerrorbells
set novisualbell
set visualbell t_vb=

set number
set cursorline
" Do not keep backup or .swp files
set nobackup
set nowritebackup
set noswapfile

" Use vim defaults.
set nocompatible

set ts=2  " tab span
set sw=2  " indetation span

set expandtab  " always expands tab to spaces
set wrap  " wrap long lines to screen size 

syntax enable

" status line color of current window & non-current windows
highlight StatusLineNC guifg=SlateBlue guibg=Yellow
highlight StatusLine guifg=Gray guibg=White

" Working with tabs
"~~~~~~~~~~~~~~~~~~~~~~~
if version >= 700
	" always enable Vim tabs
	set showtabline=2
	" set tab features just like browser
	" open tab, close tab, next tab, previous tab (just like Chrome and Firefox keyboard shortcuts)
	map <C-t> <Esc>:tabnew<CR>
	map <C-w> <Esc>:tabclose<CR>
	map <C-d> <Esc>:tabnext<CR>
	map <C-a> <Esc>:tabprev<CR>
endif


" show the matching part of the pair for [], {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1
set list listchars=tab:--,trail:-,nbsp:-
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\
\ [%l/%L\ (%p%%)
filetype plugin indent on
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79 " PEP-8 Friend

