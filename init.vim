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
hi VertSplit guifg=bg
hi NvimTreeNormal guibg=#3c3836

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
require'bufferline'.setup {
  icon_separator_active = '▎',
  icon_separator_inactive = '',
  icon_close_tab = '',
  icon_close_tab_modified = '●',
  icon_pinned = '車',
}

local nvim_tree_events = require('nvim-tree.events')
local bufferline_state = require('bufferline.state')

local function get_tree_size()
  return 30
end

nvim_tree_events.on_tree_open(function()
  bufferline_state.set_offset(get_tree_size())
end)

nvim_tree_events.on_tree_resize(function()
  bufferline_state.set_offset(get_tree_size())
end)

nvim_tree_events.on_tree_close(function()
  bufferline_state.set_offset(0)
end)

END
