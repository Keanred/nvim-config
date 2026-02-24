# Neovim Keybinds

Leader key: `Space`

## Core (general)

| Mode | Key | Action |
| --- | --- | --- |
| n | `<leader>pv` | Open file explorer (`:Ex`) |
| v | `J` | Move selected lines down |
| v | `K` | Move selected lines up |
| n | `J` | Join lines without moving cursor |
| n | `<C-d>` | Half-page down and center cursor |
| n | `<C-u>` | Half-page up and center cursor |
| n | `n` | Next search result and center cursor |
| n | `N` | Previous search result and center cursor |
| n | `<leader>zig` | Restart LSP (`:LspRestart`) |
| x | `<leader>p` | Paste without overwriting yank register |
| n/v | `<leader>y` | Yank to system clipboard |
| n | `<leader>Y` | Yank line to system clipboard |
| n/v | `<leader>d` | Delete to black-hole register |
| i | `<C-c>` | Escape insert mode |
| n | `Q` | Disabled |
| n | `<C-f>` | Open tmux sessionizer in new window |
| n | `<leader>f` | Format buffer via LSP |
| n | `<C-k>` | Next quickfix and center cursor |
| n | `<C-j>` | Previous quickfix and center cursor |
| n | `<leader>k` | Next location list item and center cursor |
| n | `<leader>j` | Previous location list item and center cursor |
| n | `<leader>s` | Search/replace word under cursor in file |
| n | `<leader>x` | Make current file executable (`chmod +x %`) |
| n | `<leader>ee` | Insert Go `if err != nil { return err }` snippet |
| i | `<C-j>` | Accept Copilot suggestion |
| n | `<leader><leader>` | Source current file (`:so`) |

## LSP (buffer-local on LspAttach)

| Mode | Key | Action |
| --- | --- | --- |
| n | `gd` | Go to definition |
| n | `K` | Hover documentation |
| n | `<leader>vws` | Workspace symbols |
| n | `<leader>vd` | Open diagnostic float |
| n | `<leader>vca` | Code action |
| n | `<leader>vrr` | References |
| n | `<leader>vrn` | Rename |
| i | `<C-h>` | Signature help |
| n | `[d` | Next diagnostic |
| n | `]d` | Previous diagnostic |

## Git (vim-fugitive)

| Mode | Key | Action |
| --- | --- | --- |
| n | `<leader>gs` | Open Fugitive status (`:Git`) |
| n | `<leader>p` | Git push (only in Fugitive buffers) |
| n | `<leader>P` | Git pull --rebase (only in Fugitive buffers) |
| n | `<leader>t` | Start `:Git push -u origin ...` (only in Fugitive buffers) |
| n | `gu` | Diffget from `//2` |
| n | `gh` | Diffget from `//3` |

## Telescope

| Mode | Key | Action |
| --- | --- | --- |
| n | `<leader>pf` | Find files |
| n | `<C-p>` | Find git files |
| n | `<leader>pws` | Grep word under cursor (`<cword>`) |
| n | `<leader>pWs` | Grep WORD under cursor (`<cWORD>`) |
| n | `<leader>ps` | Grep prompt |
| n | `<leader>vh` | Help tags |

## Harpoon

| Mode | Key | Action |
| --- | --- | --- |
| n | `<leader>a` | Add file to Harpoon list |
| n | `<C-e>` | Toggle Harpoon quick menu |
| n | `<C-h>` | Jump to Harpoon slot 1 |
| n | `<C-t>` | Jump to Harpoon slot 2 |
| n | `<C-n>` | Jump to Harpoon slot 3 |
| n | `<C-s>` | Jump to Harpoon slot 4 |
| n | `<leader><C-h>` | Replace Harpoon slot 1 with current file |
| n | `<leader><C-t>` | Replace Harpoon slot 2 with current file |
| n | `<leader><C-n>` | Replace Harpoon slot 3 with current file |
| n | `<leader><C-s>` | Replace Harpoon slot 4 with current file |

## Zen Mode

| Mode | Key | Action |
| --- | --- | --- |
| n | `<leader>zz` | Toggle Zen Mode (width 90, numbers on) |
| n | `<leader>zZ` | Toggle Zen Mode (width 80, numbers off) |

## UndoTree

| Mode | Key | Action |
| --- | --- | --- |
| n | `<leader>u` | Toggle UndoTree |

## Trouble

| Mode | Key | Action |
| --- | --- | --- |
| n | `<leader>tt` | Toggle Trouble list |
| n | `[t` | Next Trouble item |
| n | `]t` | Previous Trouble item |
