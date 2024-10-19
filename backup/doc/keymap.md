 Keymap

`<leader>` = (space)

`Ctrl s`      Write current buffer (works also in insert mode)

## Neovim
- `<leader>e`     Neotree
- `<leader>u`     Toggle UndoTree
- `<leader>?`     Recently opened files
- `<leader>`      Existing buffers (space space)
- `<leader>/`     Find in file
- `<leader>t`     Toggle floating terminal
- `Ctrl W`        Splits etc

## Exiting Insert Mode
- `<C-[>`         Exit insert mode alternative
- `<C-O>`         Exit insert, perform one normal mode command, return to insert
- `jj`            Exit insert mode, 350ms timeout
- `kk`            Exit insert mode, enter insert to the left of end of line

_See `options.keymaps`: `[[ Exit insert mode with jj ]]`_.

## Preview
- `<leader>pm`    Preview Markdown
- `<leader>pl`    Live Server: Start
- `<leader>ps`    Live Server: Stop
- `<leader>pc`    Toggle Color Preview

## Code
- `<leader>cb`    Debug: Toggle Breakpoint
- `<leader>cB`    Debug: Set Breakpoint
- `<leader>cl`    Open diagnostics list
- `<leader>ca`    Code Action
- `<leader>cr`    Rename
- `<leader>cp`    Swap next parameter
- `<leader>cP`    Swap previous parameter
- `<leader>cd`    LSP Type Definition
- `<leader>cs`    Document Symbols
- `K`             Hover Documentation
- `Ctrl-k`        Signature Documentation

## Workspace
- `<leader>ws`    Workspace symbols
- `<leader>wa`    Workspace Add Folder
- `<leader>wr`    Workspace Remove Folder
- `<leader>wl`    Workspace List Folder

## Find
- `<leader>f/`    Search in Open Files
- `<leader>fs`    Search Select Telescope
- `<leader>fG`    Search Git Files
- `<leader>ff`    Search files
- `<leader>fh`    Search help
- `<leader>fw`    Search current word
- `<leader>fg`    Search by grep
- `<leader>fr`    Search by grep on git root
- `<leader>fd`    Search diagnostics
- `<leader>fu`    Search resume

## Debug
- `F5`           Start/Continue
- `F6`           Toggle DAP UI
- `F1`           Step Into
- `F2`           Step Over
- `F3`           Step Out

## Git
- `<leader>gd`    Git show deleted
- `<leader>gb`    Git show blame
- `<leader>gG`    Toggle Lazygit

## Code Navigation
- Todo: Separate *.md
- `g`,`z`,`[`, etc.

## Selection
- `<Tab>`        Select next item
- `<Shift-Tab>`  Select previous item
- `Ctrl<leader>` Visual Select with Treesitter
- `Ctrl<backsp>` Visual Deselect with Treesitter


