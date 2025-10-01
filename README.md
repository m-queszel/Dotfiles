## My dotfiles for dwm, dwmblocks-async, st, and nvim

These configuration files are by no means perfect, but they work. The primary purpose of this repository is to both serve as a savepoint and allow others to use this as a starting point for their own configuration.

## Patches applied to dwm:

- statuscmd
- alpha
- attachaside
- vanitygaps

## Patches applied to st:

- alpha
- undercurl
- charoffsets

## Installation:

`git clone https://github.com/m-queszel/Dotfiles` in any directory.
`cp -r <directory>/dwm <destination>` (e.g., `cp -r /home/user/temp/dwm .config/dwm`)
enter the new directory with the copied files and `sudo make clean install`

- The status bar uses dwmblocks-async for better optimization.

## Neovim Plugins

- whichkey
- autopairs
- blink.cmp
- lsp
- telescope
- treesitter
- mason
- mini-icons
- webdev icons

Note that you must manually clone the [lsp repository](https://github.com/neovim/nvim-lspconfig) into your directory.

Once in nvim, run `:checkhealth` to see plugin dependencies.
