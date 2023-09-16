set nocompatible            " disable compatibility to old-time vi

"Appearence
colorscheme default
set background=dark
syntax on                   " Turn syntax highlighting on.

"Behaviour
set showmatch               " show matching 
set mouse=v                 " middle-click paste with 
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set rnu
set wildmode=longest,list   " get bash-like tab completions
set nobackup                " Do not save backup files.
set scrolloff=5             " Do not let cursor scroll below or above N number of lines when scrolling.
set nowrap                  " Do not wrap lines. Allow long lines to extend as far as the line goes.

set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
"set cursorline             " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set backupdir=~/.cache/vim " Directory to store backup files.
filetype on                 " Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype plugin on          " Enable plugins and load plugin for the detected file type.
filetype indent on          " Load an indent file for the detected file type.

"Search
set ignorecase              " Ignore capital letters during search.
set hlsearch                " highlight search 
set incsearch               " incremental search
set smartcase               " Override the ignorecase option if searching for capital letters.

"command line
set showcmd                 " Show partial command you type in the last line of the screen.
set showmode                " Show the mode you are on the last line.
set showmatch               " Show matching words during a search.
set hlsearch                " Use highlighting when doing a search.
set history=50              " Set the commands to save in history default number is 20.
set wildmenu                " Enable auto completion menu after pressing TAB.
set wildmode=list:longest   " Make wildmenu behave like similar to Bash completion.

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

"Plugins
call plug#begin('~/.local/share/nvim/plugged')
    Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' } 
    Plug 'itchyny/lightline.vim'
call plug#end()
