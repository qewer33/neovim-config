let mapleader = " "

set mouse=a
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab

set background=dark
colorscheme gruvbox

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

lua << END
require('plugins')
require('lsp')
require('trim').setup({})
require('rust-tools').setup({})
require('nvim-autopairs').setup {}
require('lualine').setup {
    options = {
        theme  = 'gruvbox',
        component_separators = '',
        section_separators = '',
    }
}
END
