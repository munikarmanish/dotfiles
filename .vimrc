" color stuffs
syntax enable
set background=dark

" indentation stuffs (don't forget to use editorconfig plugin)
filetype indent on
set autoindent smartindent
set expandtab
set tabstop=4 softtabstop=4 shiftwidth=4

" display stuffs
set number relativenumber
set showcmd
"set cursorline
set wildmenu
set laststatus=2
set textwidth=80
set colorcolumn=+1
highlight ColorColumn ctermbg=darkgray

" search stuffs (leader = backslash by default)
set ignorecase smartcase
set showmatch
set hlsearch
set incsearch
nnoremap <leader><space> :nohlsearch<CR>

" visual movement (don't skip wrapped lines)
nnoremap j gj
nnoremap k gk

" keep selection after group indent
vnoremap > >gv
vnoremap < <gv

" folding stuffs (use zO/zC for item and zR/zM for whole file)
set foldenable
set foldlevelstart=2
set foldnestmax=5
set foldmethod=syntax

" path to search for files
set path+=**
