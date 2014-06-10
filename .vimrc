set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Plugins from github repos
Plugin 'tpope/vim-fugitive'
Plugin 'klen/python-mode'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdtree'

" Plugins from vim scripts
Plugin 'L9'
Plugin 'FuzzyFinder'


" End reqs
call vundle#end()            " required
filetype plugin indent on    " required
syntax on

" Extra stuff
:colo xoria256

" FuzzyFinder search CustomMade directory and map commands
let g:fuf_coveragefile_globPatterns = ['~/CustomMade/*', '~/CustomMade/**/*']
let g:fuf_keyOpen = '<C-l>'
let g:fuf_keyOpenTabpage = '<CR>'
map <C-j> :FufCoverageFile<CR>

" Remap hjkl
noremap ; l
noremap l k
noremap k j
noremap j h

" General Mappings
map <C-]> <Esc>
map <C-n> :tabnew<CR>
map dt :tabclose<CR>
" NerdTree Mapping
map <C-t> :NERDTreeToggle<CR>

" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2
" Python-mode
" " Activate rope
" " Keys:
" " K             Show python docs
" " <Ctrl-Space>  Rope autocomplete
" " <Ctrl-c>g     Rope goto definition
" " <Ctrl-c>d     Rope show documentation
" " <Ctrl-c>f     Rope find occurrences
" " <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" " [[            Jump on previous class or function (normal, visual, operator
" modes)
" " ]]            Jump on next class or function (normal, visual, operator
" modes)
" " [M            Jump on previous class or method (normal, visual, operator
" modes)
" " ]M            Jump on next class or method (normal, visual, operator
" modes)
let g:pymode = 1
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

" Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0
augroup vimrc_autocmds
        autocmd!
                " highlight characters past column 120
                autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
                autocmd FileType python match Excess /\%120v.*/
                autocmd FileType python set nowrap
                augroup END
