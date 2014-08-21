syntax on
filetype indent plugin on
set modeline
colorscheme elflord
set number
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

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
