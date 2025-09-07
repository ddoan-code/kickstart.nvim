# Neovim Configuration Quick Start Guide

## Overview
This is your personalized Neovim configuration based on Kickstart.nvim with additional plugins and custom keymaps inspired by The Primeagen's workflow.

## Essential Keymaps

### Leader Key
- **Leader**: `<Space>`

### File Navigation & Management
- `<leader>pv` - Open netrw (file explorer)
- `<leader>-` - Open yazi file manager
- `<leader>cw` - Open yazi in current working directory

### Telescope (Fuzzy Finder)
- `<leader>pf` - Find files
- `<C-p>` - Git files
- `<leader>ps` - Grep search (interactive)
- `<leader>sf` - Search files (built-in)
- `<leader>sg` - Live grep
- `<leader>sw` - Search current word
- `<leader>sr` - Resume last search
- `<leader>s.` - Recent files
- `<leader><leader>` - Open buffers
- `<leader>/` - Fuzzy search in current buffer
- `<leader>sn` - Search Neovim config files

### Harpoon (Quick File Switching)
- `<leader>a` - Add current file to harpoon
- `<C-e>` - Toggle harpoon quick menu
- `<C-h>` - Jump to harpoon file 1
- `<C-j>` - Jump to harpoon file 2
- `<C-k>` - Jump to harpoon file 3
- `<C-l>` - Jump to harpoon file 4

### Window Navigation
- `<M-h>` - Move to left window (Alt+h)
- `<M-j>` - Move to bottom window (Alt+j)
- `<M-k>` - Move to top window (Alt+k)
- `<M-l>` - Move to right window (Alt+l)

### Text Editing
- `J` (visual mode) - Move selected lines down
- `K` (visual mode) - Move selected lines up
- `J` (normal mode) - Join lines but keep cursor position
- `<C-d>` - Scroll down and center cursor
- `<C-u>` - Scroll up and center cursor
- `n` - Next search result (centered)
- `N` - Previous search result (centered)

### Copy/Paste/Delete
- `<leader>y` - Yank to system clipboard
- `<leader>Y` - Yank line to system clipboard
- `<leader>p` (visual mode) - Paste without losing register
- `<leader>s` - Replace word under cursor (interactive)

### LSP (Language Server)
- `gd` - Go to definition
- `gr` - Go to references
- `gI` - Go to implementation
- `<leader>D` - Type definition
- `<leader>rn` - Rename symbol
- `<leader>ca` - Code actions
- `K` - Hover documentation
- `<leader>f` - Format buffer
- `[d` - Previous diagnostic
- `]d` - Next diagnostic
- `<leader>e` - Show diagnostic error
- `<leader>q` - Open diagnostic quickfix

### Git (Fugitive)
- `<leader>gs` - Git status

### Utilities
- `<leader>u` - Toggle undo tree
- `<leader>x` - Make file executable
- `<C-f>` - Launch tmux sessionizer
- `<Esc><Esc>` - Exit terminal mode

### Search & Replace
- `<Esc>` - Clear search highlights
- `<leader>th` - Toggle inlay hints

## Plugins Overview

### Core Functionality
- **Telescope**: Fuzzy finder for files, text, and more
- **Harpoon**: Quick file navigation
- **LSP**: Language server support with auto-completion
- **Treesitter**: Syntax highlighting and text objects

### File Management
- **Yazi**: Modern file manager integration
- **Netrw**: Built-in file explorer

### Git Integration
- **Fugitive**: Git wrapper
- **Gitsigns**: Git diff indicators in gutter

### Code Enhancement
- **nvim-cmp**: Auto-completion engine
- **LuaSnip**: Snippet engine
- **Conform**: Code formatting (prettier, stylua)
- **Comment.nvim**: Easy commenting with `gc`
- **Mini.nvim**: Text objects and surrounding

### Visual
- **Melange**: Color scheme
- **Todo Comments**: Highlight TODO, FIXME, etc.
- **Which-key**: Show available keymaps

## Language Support

### Configured Languages
- **Lua**: LSP (lua_ls) + formatting (stylua)
- **JavaScript/TypeScript**: LSP (ts_ls) + formatting (prettier/prettierd) + linting (eslint)
- **Rust**: LSP (rust_analyzer)

### Adding New Languages
1. Add LSP server to the `servers` table in `init.lua`
2. Add formatter to `formatters_by_ft` in conform config
3. Add to `ensure_installed` if you want auto-installation

## File Structure
```
~/.config/nvim/
├── init.lua                    # Main configuration
├── lua/
│   ├── custom/plugins/
│   │   ├── init.lua           # Empty (for future custom plugins)
│   │   ├── set.lua            # Editor settings
│   │   └── remap.lua          # Custom keymaps
│   └── kickstart/plugins/     # Kickstart plugin configs
├── after/plugin/              # Plugin-specific configs
│   ├── telescope.lua          # Telescope keymaps
│   ├── harpoon.lua           # Harpoon keymaps
│   ├── fugitive.lua          # Git keymaps
│   └── undotree.lua          # Undo tree keymap
└── lazy-lock.json            # Plugin version lock file
```

## Troubleshooting

### Common Issues
1. **Mason tools not installing**: Run `:Mason` and install manually
2. **LSP not working**: Run `:LspInfo` to check server status
3. **Formatting not working**: Run `:ConformInfo` to check formatter status
4. **Keymaps not working**: Run `:checkhealth` for diagnostics

### Useful Commands
- `:Lazy` - Plugin manager UI
- `:Mason` - LSP/tool installer UI
- `:checkhealth` - System health check
- `:Telescope` - Available telescope commands
- `:help <topic>` - Built-in help system

## Customization Tips
- Modify `lua/custom/plugins/set.lua` for editor options
- Add keymaps to `lua/custom/plugins/remap.lua`
- Create new plugin configs in `lua/custom/plugins/`
- Use `:Telescope colorscheme` to try different themes

## Notes
- Window navigation uses Alt instead of Ctrl to avoid Harpoon conflicts
- Format on save is enabled for most file types (except C/C++)
- Nerd Font is enabled for better icons
- Relative line numbers are enabled for easier navigation