My personal Neovim configuration. Minimal setup with Gruvbox as the syntax theme. Mainly for Rust development.

### Installation

`git clone https://github.com/qewer33/neovim-config ~/.config/nvim`

### Custom Keybindings

#### Navigation
| Keys         | Command  | Function                    |
|--------------|----------|-----------------------------|
| Ctrl + Up    | {        | Move up by paragraph        |
| Ctrl + Down  | }        | Move down by pargraph       |
| Ctrl + Right | w        | Move right by word          |
| Ctrl + Left  | b        | Move left by word           |
| Alt + Up     | yyP      | Duplicate line up           |
| Alt + Down   | yyp      | Duplicate line down         |
| Alt + Right  | f<space> | Move to next whitespace     |
| Alt + Left   | F<space> | Move to previous whitespace |
| Shift + Up   | ddkP     | Move line up                |

#### Editing
| Keys       | Command | Function                                      |
|------------|---------|-----------------------------------------------|
| Leader + s | viw     | Visual delect word under cursor               |
| Leader + d | viwdi   | Delete word under cursor and switch to insert |

#### Telescope
| Keys        | Command                     | Function                      |
|-------------|-----------------------------|-------------------------------|
| Leader + ff | lua telescope.find\_files() | Open Telescope file finder    |
| Leader + fg | lua telescope.live\_grep()  | Open Telescope live grep      |
| Leader + fb | lua telescope.buffers()     | Open Telescope buffers menu   |
| Leader + fh | lua telescope.help\_tags()  | Open Telescope help tags menu |

#### NvimTree
| Keys       | Command        | Function             |
<------------|----------------|----------------------|
| Leader + o | NvimTreeToggle | Toggle the Nvim tree |
