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

" plugins (clone 'k-takata/minpac' to '~/.vim/pack/minpac/opt')
packadd minpac
call minpac#init()

" minpac manages minpac
call minpac#add('k-takata/minpac', {'type': 'opt'})

" editorconfig
call minpac#add('editorconfig/editorconfig-vim')

" better statusbar
call minpac#add('itchyny/lightline.vim')

" commenting
call minpac#add('tpope/vim-commentary')

" git-gutter
call minpac#add('airblade/vim-gitgutter')

" indent-guides
call minpac#add('nathanaelkane/vim-indent-guides')
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 1
let g:indent_guides_enable_on_vim_startup = 0

" fuzzy file finder (run `install --bin` and add the binary `fzf` to PATH)
call minpac#add('junegunn/fzf')
nnoremap <C-p> :FZF<CR>

" auto-format (install clang-format, autopep8, isort, etc)
" Use :Autoformat to format
call minpac#add('Chiel92/vim-autoformat')
call minpac#add('fisadev/vim-isort')

" auto-complete (install clang, and use the commented line for Mac)
call minpac#add('xavierd/clang_complete')
let g:clang_library_path='/usr/lib/llvm-14/lib/libclang-14.so.1'
"let g:clang_library_path='/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
call minpac#add('davidhalter/jedi-vim')

" code navigation (install cscope and exuberant-ctags)
call minpac#add('joe-skb7/cscope-maps')
