let mapleader = " "

source ~/.config/nvim/keybinds.vim

set mouse=a
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab

set background=dark
colorscheme gruvbox

hi NonText guifg=bg

lua << END
require('plugins')
require('lsp')
require('trim').setup({})
require('rust-tools').setup({})
require("nvim-tree").setup()
require('nvim-autopairs').setup {}
require('lualine').setup {
    options = {
        theme  = 'gruvbox',
        component_separators = '',
        section_separators = '',
    }
}
END
