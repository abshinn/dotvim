set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Bundle 'gmarik/Vundle.vim'

" Github commands in vim with :Gcommand
Bundle 'tpope/vim-fugitive'

" Supertab
Bundle 'ervandew/supertab'

" Python autocomplete
Bundle 'davidhalter/jedi-vim'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Custom Plugin and Vim Settings

syntax on
colorscheme elflord

set number           " Show numbers
set showmatch        " Show matching {[()]}
set visualbell       " No bell sound

" tab settings
set modeline         
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" ignore files in autocomplete
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif

" Highlight excess line length
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
    augroup END

" search settings
set incsearch           " Incremental search
set hlsearch            " Highlight search match
set ignorecase          " Do case insensitive matching
set smartcase           " do not ignore if search pattern has CAPS

" comment and uncomment with ,c and ,u
autocmd FileType c,cpp,java,scala,html let b:comment_leader = '// '
autocmd FileType sh,ruby,python,yml,R  let b:comment_leader = '# '
autocmd FileType conf,fstab            let b:comment_leader = '# '
autocmd FileType tex                   let b:comment_leader = '% '
autocmd FileType mail                  let b:comment_leader = '> '
autocmd FileType vim                   let b:comment_leader = '" '
noremap <silent> ,c :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,u :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" insert blank lines above and below with ctrl-j and ctrl-k
nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Use python like a Jedi with SuperTab
" no automatic pop-ups, tab compelete instead
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#popup_on_dot = 0
let g:SuperTabDefaultCompletionType = 'context'
