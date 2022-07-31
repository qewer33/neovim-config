let mapleader = " "

source ~/.config/nvim/keybinds.vim

set guifont=JetBrains\ Mono:h9
set mouse=a
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set fillchars=eob:.

set background=dark

hi EndOfBuffer guifg=bg
hi VertSplit guifg=bg

lua << END
require('plugins')
require('lsp')

-- Plugin Setups
require('onedark').setup {
    style = 'warm'
}
require('onedark').load()
require('trim').setup {}
require('rust-tools').setup {}
require("nvim-tree").setup {
    open_on_setup = true,
    renderer = {
        indent_markers = {
            enable = true,
        },
        icons = {
            glyphs = {
                folder = {
                    arrow_closed = "",
                    arrow_open = "",
                }
            }
        }
    },
    diagnostics = {
        enable = true,
    },
}
require('nvim-autopairs').setup {}
require('lualine').setup {
    options = {
        theme  = 'onedark',
        component_separators = '',
        section_separators = '',
    }
}
require('bufferline').setup {
  icon_separator_active = '',
  icon_separator_inactive = '',
  icon_close_tab = '',
  icon_close_tab_modified = '●',
  icon_pinned = '車',
}
require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}

local nvim_tree_events = require('nvim-tree.events')
local bufferline_state = require('bufferline.state')

local function get_tree_size()
    return vim.api.nvim_win_get_width(0)+1
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

hi BufferTabpageFill guibg=#242628
