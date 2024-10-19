# Plugins
A shortened explanation of plugins in use. Not a replacement for `:h plugin`. 
Explanation for config choices are included if necessary.

## nvim-surround
'nvim-surround' is a plugin for efficiently manipulating surrounding
left/right delimiter pairs, e.g. parentheses, quotes, HTML tags, and more.
This plugin provides keymaps for "adding" (through insert/normal/visual mode)
and "modifying" (deleting/changing) delimiter pairs.

### Adding a new pair

`ys{motion}{char}` - **y**ou **s**urround

_Opening pairs_ surround with a space ( e.g. ).

_Closing pairs_ surround without a space (e.g.)

_Capital S_ surrounds with a new line.


Examples:

- `yss]`          Surround current line with [, ignoring whitespace
- `ySS$`          Surround current line with $, ignore whitespace, add newline
- `ysiw"`         Surround inner word with "
- `ys3w[`         Surround three words, starting from cursor, with [
- `ys$@`          Surround till end of line with @
- `ysl(`          Surround char with (<space>
- `yst"}`         Surround up to the next " with }, excluding "
- `ysf']`         Surround up to and including the next ' with ]
- `ys)"`          Surround till the end of the sentence with "
- `ys}'`          Surround till the end of the paragraph with '

In visual mode: `S"` surrounds selection with ".

### Deleting a pair

`ds{char}` - **d**elete **s**urround

- `ds)`           Delete surrounding pair of ()

### Change a pair

`cs{target}{replacement}` **c**hange **s**urround

- `cs"'`          Change surrounding " to '
- `cS[{`          Change surrounding [ to { on a new line

### Aliasing

The following chars represent one or more characters:

- `a`   is aliased to   `>`
- `b`   is aliased to   `)`
- `B`   is aliased to   `}`
- `r`   is aliased to   `]`
- `q`   is aliased to   `"`,`'`, `

#### Further documentation

See `:h nvim-surround.usage` for more help and configuration examples,


## nvim-navbuddy

- `<leader>cn`        Open Navbuddy
- `g?`                Open navbuddy keymap

- `h/l/0`             Move to left/right/first panel
- `<C-v/s>`           Open node in vertical/horizontal split

- `<enter>, o`        Goto symbol
- `s`                 Toggle preview of node
- `t`                 Open fuzzy finder at current level in telescope

- `v/V`               Visual select name/scope
- `y/Y`               Yank name/scope
- `i/I`               Insert at start of name/scope
- `a/A`               Insert at end of name/scope

- `J/K`               Move focused node down/up
- `r/d`               Rename symbol / delete scope


- `f/F`               Create / delete fold of current scope
- `c`                 Comment out current scope

## Leap

Leap let's you jump to any character with the following motion:

`s{char1}{char2}` (forward) or `S{char1}{char2}` (backward).

After typing in `char1` labels will appear on all matches. You can jump to any
labeled position by entering it's char. 

For example: If we are looking for `void`,

- And there's only one occurence: `svo<enter>`
- With multiple occurences, jump directly to the first: `sv<enter>`
- With multiple occurences, jump to the one labeled `u`: `svou<enter>`

Additionally, 

- Search across splits: `gs{char1}{char2}`
- Repeat the last search: `s<enter>`
- Traverse through the matches: `s<enter><enter>`
- Jump to an empty line, or to the end of a line: `s<space><space>`



