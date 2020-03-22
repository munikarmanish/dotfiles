" color stuffs
syntax enable
set background=dark

" indentation stuffs (don't forget to use editorconfig plugin)
filetype plugin indent on
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
nnoremap <space> za

" path to search for files
set path+=**

" normal backspace behavior
set backspace=2

" plugins
" packadd minpac
" call minpac#init()
" call minpac#add('k-takata/minpac', {'type': 'opt'})
" call minpac#add('editorconfig/editorconfig-vim')
" call minpac#add('itchyny/lightline.vim')
" call minpac#add('tomtom/tcomment_vim')
" call minpac#add('airblade/vim-gitgutter')
" call minpac#add('nathanaelkane/vim-indent-guides')
" call minpac#add('kien/ctrlp.vim')

let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 1
let g:indent_guides_enable_on_vim_startup = 0
