" Navigation
nnoremap <C-Up> {
nnoremap <C-Down> }
nnoremap <C-Right> w
nnoremap <C-Left> b
nnoremap <A-Up> yyP
nnoremap <A-Down> yyp
nnoremap <A-Right> f<space>
nnoremap <A-Left> F<space>
nnoremap <S-Up> ddkP
nnoremap <S-Down> ddp
" Editing
nnoremap <leader>s viw
nnoremap <leader>d viwdi
" Telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
" NvimTree
nnoremap <leader>o <cmd>NvimTreeToggle<cr>
