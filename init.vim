source keybinds.vim

let mapleader = " "

set mouse=a
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab

set background=dark
colorscheme gruvbox

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
