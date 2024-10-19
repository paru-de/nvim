
# Vim Motions and Functions Keymap
wip

## Basic Motions

- `h`:  Move left
- `j`:  Move down
- `k`:  Move up
- `l`:  Move right

## Word Motions

- `w`:  Move to the beginning of the next word
- `b`:  Move to the beginning of the previous word
- `e`:  Move to the end of the current word

## Char Motions

- `f<char>`: Move to the next occurrence of `<char>`
- `F<char>`: Move to the previous occurrence of `<char>`
- `t<char>`: Move until the next occurrence of `<char>`, place cursor before it
- `T<char>`: Move until the previous occurrence of `<char>`, place cursor after
  it
- `;`: Repeat last `f`, `t`, `F`, or `T` motion
- `,`: Repeat last `f`, `t`, `F`, or `T` motion in the opposite direction

## Line Motions

- `0`:  Move to the beginning of the line
- `$`:  Move to the end of the line
- `^`:  Move to the first non-blank character of the line
- `gg`: Go to the first line of the document
- `G`:  Go to the last line of the document

## Screen Motions

- `Ctrl B`: Move one page up
- `Ctrl F`: Move one page down
- `Ctrl U`: Move half a page up
- `Ctrl D`: Move half a page down
- `Ctrl E`: Scroll the window down without moving the cursor
- `Ctrl Y`: Scroll the window up without moving the cursor
- `H`: Move to the top of the visible window
- `M`: Move to the middle of the visible window
- `L`: Move to the bottom of the visible window

## Folding/Unfolding Functions

- `za`: Toggle current fold
- `zA`: Toggle all folds recursively
- `zc`: Close the current fold
- `zC`: Close all folds recursively
- `zo`: Open the current fold
- `zO`: Open all folds recursively

## Search and Replace

- `/`: Start a forward search
- `n`: Move to the next search result
- `N`: Move to the previous search result
- `:s/old/new/g`: Replace all occurrences of "old" with "new"
- `:%s/old/new/gc`: Replace all occurrences of "old" with "new" with confirmation

## Marks

- `m<letter>`: Set a mark at the cursor position using the specified letter
- `'`: Move to the first non-blank character of the line containing the mark
- ```: Move to the cursor position when the mark was set
- `:marks`: Display a list of marks

## Visual Mode

- `v`: Start character-wise visual mode
- `V`: Start line-wise visual mode
- `Ctrl V`: Start block-wise visual mode

## External Commands

- `:! <command>`: Run an external command from within Vim
- `:r !<command>`: Read the output of a shell command into the buffer

## Miscellaneous

- `u`: Undo the last change
- `Ctrl R`: Redo the last undone change
- `.`: Repeat the last change
- `Ctrl A`: Increment the number under the cursor
- `Ctrl X`: Decrement the number under the cursor
- `:earlier <time>`: Go to an earlier version of the file (e.g., `:earlier 2m` for 2 minutes ago)
- `:later <time>`: Go to a later version of the file (e.g., `:later 1h` for 1 hour later)
- `:cd`: Change the current directory
- `:pwd`: Show the current working directory
- `:e!`: Reload the current file, discarding changes

