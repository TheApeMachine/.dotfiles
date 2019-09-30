set nocompatible
set relativenumber
set number
set autoindent
set smartindent
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set ruler
set foldmethod=indent
set foldlevel=99
set cursorline

syntax enable
filetype plugin on

set t_Co=256
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" FINDING FILES
set path+=**
set wildmenu

" FILE BROWSING
""let g:netrw_banner=0
""let g:netrw_browse_split=4
""let g:netrw_altv=1
""let g:netrw_liststyle=3
""let g:netrw_list_hide=netrw_gitignore#Hide()
""let g:netrw_list_hide.='\(^\|\s\s\)\zs\.\S\+'

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'christoomey/vim-tmux-runner'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'fatih/vim-go'
Plugin 'caglartoklu/ftcolor.vim'
Plugin 'vim-python/python-syntax'
Plugin 'caglartoklu/borlandp.vim'
Plugin 'morhetz/gruvbox'
call vundle#end()
filetype plugin indent on

set background=dark
colorscheme scarface

let g:python_highlight_all = 1

" Disable Ex mode.
nnoremap Q <Nop>

" Remove trailing spaces.
autocmd BufWritePre * %s/\s\+$//e

" Run go_fmt on write.
let g:go_fmt_command = "goimports"
let g:syntastic_go_checkers = ['go']

set grepprg=ack

let mapleader=","

nnoremap ; :

" Switch splits easily.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap <space> za

inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {<CR>}<Esc>O
autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap } <c-r>=CloseBracket()<CR>
inoremap " <c-r>=QuoteDelim('"')<CR>
inoremap ' <c-r>=QuoteDelim("'")<CR>

" Auto save on <Esc>
autocmd InsertLeave * write
autocmd! bufwritepost .vimrc source %

" Quick save.
nnoremap <c-w> :update<CR>
vnoremap <c-w> <c-c>:update<CR>
inoremap <c-w> <c-o>:update<CR>

" Quick quit.
nnoremap <leader>q :quit<CR>

" Tabs.
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>n :tabprevious<CR>
nnoremap <leader>m :tabnext<CR>
nnoremap <leader>w :tabclose<cr>
nnoremap <leader>e :tabonly<cr>

" Panes.
nnoremap <leader>\ :vsplit<cr>
nnoremap <leader>- :split<cr>
nnoremap <leader>/ :Ex<cr>

" Tmux stuff.
nnoremap <leader>r :VtrSendCommandToRunner!<cr>

" Do not store the swp files inline with the code.
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Use the system clipboard
set clipboard=unnamed

function ClosePair(char)
 if getline('.')[col('.') - 1] == a:char
 return "\<Right>"
 else
 return a:char
 endif
endf

function CloseBracket()
 if match(getline(line('.') + 1), '\s*}') < 0
 return "\<CR>}"
 else
 return "\<Esc>j0f}a"
 endif
endf

function QuoteDelim(char)
 let line = getline('.')
 let col = col('.')
 if line[col - 2] == "\\"
 "Inserting a quoted quotation mark into the string
 return a:char
 elseif line[col - 1] == a:char
 "Escaping out of the string
 return "\<Right>"
 else
 "Starting a string
 return a:char.a:char."\<Esc>i"
 endif
endf

" Helpers for creating color schemes.
nmap <C-S-O> :call <SID>SynStack()<CR>
function! <SID>SynStack()
	if !exists("*synstack")
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunction
