"
" Shortcut commands:
" bb => hide line numbers
" bn : show line number
" Ctrl+n : switch relative numbers
"

syntax on

set expandtab
set tabstop=4
set paste
set smartindent
set shiftwidth=4

" Remember current line of last edit
if has("autocmd")
  "filetype plugin indent on
  autocmd FileType text setlocal textwidth=78

" always jump to last edit position when opening a file
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif
endif

" Make hlsearch work like less
set hlsearch
nnoremap <ESC>h :nohlsearch<CR>
hi Search ctermfg=black ctermbg=white

" Show lines numbers
set number
nnoremap <ESC>bb :se nonumber<CR>
nnoremap <ESC>bn :se number<CR>

" Encoding
if has("multi_byte")
  set encoding=utf-8
  setglobal fileencoding=utf-8
  set bomb
else
  echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif

" Toggle relativenumber
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>
