" stop vim from adding random magic comments
augroup stopmagiccomments
  autocmd!
  autocmd FileType * set formatoptions-=c formatoptions-=r formatoptions-=o
augroup END

" Keymappings
let mapleader = ' '

nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>Q :q!<cr>
nnoremap <leader>r :source $MYVIMRC<cr>
" telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
" move lines up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
" move to next buffer
nnoremap <tab> :bnext<cr>
nnoremap <S-tab> :bprevious<cr>
" better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

inoremap jk <ESC>

" tab in visual mode
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
" move lines up and down
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Plugins
let g:deoplete#enable_at_startup = 1
let g:deoplete#lsp#use_icons_for_candidates = 1
