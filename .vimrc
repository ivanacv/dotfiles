set nonu
set ff=unix
set modeline
"from sontek
"loads plugins
filetype off
call pathogen#incubate()
call pathogen#helptags()
syntax on
filetype on
filetype plugin indent on
"code folding
set foldmethod=indent
set foldlevel=99

" maps moving window directly avoid ctrl+w+key
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" TODOS
"map <leader>t <Plug>Tasklist

" PEP8
let g:pep8_map='<leader>8'

"tab completion
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

"pydoc menu
set completeopt=menuone,longest,preview

"rope stuff
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

"Ack stuff
nmap <leader>a <Esc>:Ack!

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
"map T :TaskList<CR>
"map PP :TlistToggle<CR>
set expandtab
set textwidth=79
set tabstop=4
set softtabstop=2
set shiftwidth=2
set autoindent
autocmd BufEnter * silent! lcd %:p:h
set clipboard=unnamed
set hidden
set viminfo='25,\"50,n~/.viminfo
set formatoptions-=tc
set backupskip=/tmp/*,/private/tmp/*
set smartcase
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

