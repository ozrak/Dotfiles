" Set to 256 Colors
set t_Co=256

" Get out of the horrible vi-compatible mode
set nocompatible

" Don't beep or flash please
set noerrorbells
set visualbell
set t_vb=

" Let me use backspace please
set backspace=indent,start,eol

" Syntax highlight if available
syntax on

" Don't wrap lines.
set nowrap

" Enable mouse all the time
set mouse=a

" Show line numbers
set nu

" I use a dark background and the my own tweaked molokai colorscheme
set background=dark
colorscheme ozrak_molokai
"colorscheme molokai
"colorscheme torte
"colorscheme desert

" When new windows are created, have all windows be of equal size
set equalalways

" Expand tabs to spaces
" Use indents of 4 spaces
" Set tab to 4 spaces
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

"Vundle stuff (plugins) {{{
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='ozrak'
let g:airline#extensions#tabline#enabled = 1
"   laederon 
"   lucius
"   raven  
"   tomorrow 

call vundle#end()            " required
" Enable filetype detection and plugin use
" To ignore plugin indent changes, instead use:
" filetype plugin on
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ

"Vundle end }}}

"Mappings {{{
map <C-n> :NERDTreeToggle<CR>

"leader mappings
let mapleader = ","

map <leader>n :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>

"Eclim search for file in workspace
map <leader>r :LocateFile<CR>
map <leader>l :LocateFile<CR>
"Eclim similar to eclipse F3 (open declaration)
map <leader>3 :JavaSearchContext<CR>

"Mappings end }}}

"Coding stuff {{{
" Python stuff
autocmd BufRead,BufNewFile *.py syntax on
autocmd BufRead,BufNewFile *.py set ai
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Ruby stuff
runtime! macros/matchit.vim

augroup myfiletypes
    autocmd!
    autocmd FileType ruby,eruby set ai sw=2 sts=2 et
augroup END

" For C-like programming, have automatic indentation
autocmd FileType c,cpp,slang set cindent

" For acutal C (not C++) programming where comments have explicit end
" characters, if starting a new line in the middle of a comment automatically
" insert the comment leader characters
autocmd FileType c set formatoptions+=ro

" For CSS, also have things in braces indented.
autocmd FileType css set smartindent

" For HTML generally format text, but if a long line has been created
" leave it alone when editing.
autocmd FileType html set formatoptions+=tl

" Special for make files.
autocmd FileType make set noexpandtab shiftwidth=8

" For asn1/asn1++ files
autocmd FileType asn1 set filetype=asn
autocmd BufRead,BufNewFile *.asn1++ set filetype=asn

" For .m files to tf (TinyFugue)/uzi
autocmd BufRead,BufNewFile *.m set filetype=tf
"Coding end }}}

"Highligt everything past the 80 character mark
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

"set smarttab autoindent
"set tw=79

"Always display statusline for (ex) Airline to always be displayed
set laststatus=2

"Wait 10ms before timeout on key code delay
set ttimeoutlen=10

"Get rid of the default mode indicator
set noshowmode

set foldmethod=marker
"use | too display tab indentation
"set list lcs=tab:\|\

