# Neovim config

My Neovim config with Telescope, Harpoon, Treesitter, LSP, and formatting.

The leader key is `,`.

## Keybinds

### Files and search

| Key | Action |
| --- | --- |
| `,e` | File explorer |
| `,ff` | Find files |
| `,fa` | Find all files, including ignored/hidden files |
| `,fw` | Live grep |
| `,fb` | Find buffers |
| `,s` | Save |
| `,q` | Close buffer |

### Editing

| Key | Action |
| --- | --- |
| `,/` | Toggle comment |
| `<C-a>` | Select all |
| `+` / `-` | Increment/decrement number |
| `J` / `K` (visual) | Move selection down/up |
| `<C-d>` / `<C-u>` | Scroll down/up and center cursor |
| `n` / `N` | Next/previous match and center cursor |

### Windows

| Key | Action |
| --- | --- |
| `sh` / `sj` / `sk` / `sl` | Move to left/down/up/right window |
| `ss` | Horizontal split |
| `sv` | Vertical split |
| `sc` | Close window |
| `so` | Keep only the current window |
| `<C-h>` / `<C-l>` | Resize horizontally |
| `<C-j>` / `<C-k>` | Resize vertically |

### Harpoon

| Key | Action |
| --- | --- |
| `,a` | Add file |
| `,h` | Open Harpoon menu |
| `,1` / `,2` / `,3` | Jump to marked file |

### LSP

| Key | Action |
| --- | --- |
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gi` | Go to implementation |
| `gr` | Find references |
| `K` | Show hover documentation |
| `,ca` | Code action |
| `,ra` | Rename symbol |

### Completion

| Key | Action |
| --- | --- |
| `<C-Space>` | Trigger completion |
| `<Tab>` / `<S-Tab>` | Next/previous completion item |

### Diagnostics

| Key | Action |
| --- | --- |
| `,d` | Show diagnostic under the cursor |
| `,fd` | Find diagnostics |

### Tools

| Key | Action |
| --- | --- |
| `<C-f>` | Open tmux sessionizer |
