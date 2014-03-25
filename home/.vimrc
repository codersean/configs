" Sean Long, aka codersean, custom settings
" this file is available at: 
" - https://github.com/codersean/configs/home/.vimrc

" places to find cool customizations
" http://choorucode.com/tag/vim/

" use pathogen to manage plugins
execute pathogen#infect()

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

set modeline

" Turns on airline
set laststatus=2

let g:move_key_modifier = 'C'
"let g:airline_powerline_fonts = 1

" don't treat 007 as octal when using <C-a> and <C-x>
set nrformats=

set t_Co=256		" use 256 terminal colors for full glory
color codersean		" use custom color scheme

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=200		" keep 200 lines of command line history
set ruler		    " show the cursor position all the time
set showcmd		    " display incomplete commands
set incsearch		" do incremental searching

set number		    " turn on line numbering

" set expandtab
set smarttab
set tabstop=4
"set softtabstop=4
set shiftwidth=4
"set autoindent

set ff=unix		    " default to unix file format

" Set system spacific settings 
if has('mac')

    set gfn=Menlo:h12  "Monaco:h14	
    "set gfn=Literation\ Mono\ Powerline:h12

elseif has('win32')

    set gfn=courier_new:h10
    "set gfn=Literation\ Mono\ Powerline:h12

elseif has('unix')

    "set gfn=FreeMono\ 12
    set gfn=Liberation\ Mono\ 11
    "set gfn=Literation\ Mono\ Powerline\ 12

endif

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

	" Enable file type detection.
	" Use the default filetype settings, so that mail gets 'tw' set to 72,
	" 'cindent' is on in C files, etc.
	" Also load indent files, to automatically do language-dependent indenting.
	filetype plugin indent on

    " fix python mode
    autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
else

	set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

" Key mapping

" set the leader to the spacebar
let mapleader = "\<Space>"

" have this to clear previous search highlighing
nnoremap <leader><space> :noh<cr>

" map <Leader>p or and <Leader>y to copy & paste to system clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Map keys to easily move between windows without using arrow keys
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Tag List plugin settings
nnoremap <silent> <F8> :TlistToggle<CR>

" This will show a vertical line at column x while in insert mode
highlight ColorColumn ctermbg=5
highlight ColorColumn guibg=DarkMagenta
augroup ColorcolumnOnlyInInsertMode
autocmd!
autocmd InsertEnter * setlocal colorcolumn=120
autocmd InsertLeave * setlocal colorcolumn=0
augroup END

" Remap F1 to esc for times when miss hitting esc, can use :h for help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" TESTING AREA
"
" This will open GVIM up in full screen mode
"autocmd GUIEnter * simalt ~x

" This will disable the arrow keys so get better at vim
"nnoremap <up> <nop>
"nopnnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>

