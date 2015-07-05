"get rid of all the crap that Vim does to be vi compatible
set nocompatible
"We also want to turn off the default filetype controls for now because the way that vim caches filetype rules at runtime interferes with the way that vundle alters the runtime environment.
filetype off

"vundle initialization function
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" add any github plugin using the 'user/repository' format or 'user/repository.git' format
Plugin 'jiangmiao/auto-pairs.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/nerdcommenter.git'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()
" We can now re-establish the filetype functionality
filetype plugin indent on

"Map '%' to jump from one keyword to its corresponding 'end' in Ruby files.
runtime macros/matchit.vim

"this prevents some security exploits that have to do with modelines in files
set modelines=0

set number
set tabstop=4 "tabs are 3 spaces big (smaller than default), this can be tabs that you make yourself, or ones that you copy into the file
set expandtab "use spaces characters in stead of tab characters
set shiftwidth=4 "3 spaces are used with indent commands in normal mode (with the keys <>)
set softtabstop=4 "finetunes the amount of whitespaces in insert mode, you want this to be equal to shiftwidth to get consistent indentation in between normal and insert mode                  

"Next are a few options that just make things better:
set encoding=utf-8 "set character encoding to unicode
set scrolloff=3 "try to keep 3 context lines before or after the line you're scrolling to (for example with search)
set autoindent "You'll keep the indentation on the next line when you press enter.
set showcmd "causes part of the entered command to be shown at the bottom line, on the right. 
set hidden "It hides buffers instead of closing them. This means that you can have unwritten changes to a file and open a new file using :e, without being forced to write or undo your changes first. 
set wildmenu
set wildmode=list:longest "this in combination with last setting will allow auto completion in the vim command line
set visualbell "flashes the screen when you give a command that doesn't do anything
set cursorline "highlight the current line
set ttyfast "fast scrolling
set ruler
set laststatus=2 "status line is always displayed (with current mode, filename, ...)
set undofile "create a .un file so you can undo changes even after closing and reopening a file
let mapleader = "," "remap leader key to ,

"Solarized color theme
let g:solarized_termcolors=256
syntax on
set t_Co=256
colorscheme solarized
set background=light

"remap CTRL-c in visual mode for copy to clipboard
vnoremap <C-c> "+y

"Let vim change the working directory automatically (so you can open files from the current path)
set autochdir

"Open new split panes to right and bottom, which feels more natural than Vim’s default:
set splitbelow
set splitright

"map a key to maximize current screen
map <F5> <C-W>_<C-W><Bar>
map <F6> <C-W>=

"map ; to do the same as :
nnoremap ; :

"map CTRL+h/j/k/l to the commands needed to move around in your splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"improving SEARCHES
"if you search all lowercase, it will be case-insensitive, if you use one or
"more uppercases, it will be case sensitive
set ignorecase
set smartcase
"apply substitutions always globally on a line, so instead of :%s/foo/bar/g you just type :%s/foo/bar/
set gdefault
"highlight searching
set incsearch
set showmatch
set hlsearch
"remove highlighting from search by pressing , + space
nnoremap <leader><space> :noh<cr>

"disable arrow keys, so I learn to use hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
