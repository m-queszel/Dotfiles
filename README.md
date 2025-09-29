# My dotfiles for dwm, dwmblocks-async, and (eventually) nvim
---
These configuration files are by no means tidy, but they work. The primary purpose of this repository is to serve as a save point in case I break everything and need to go back.

# Patches applied:
---
- statuscmd
- alpha
- attachaside
- vanitygaps

# Installation:

`git clone https://github.com/m-queszel/Dotfiles` in any directory.
`cp -r <directory>/dwm <destination>` (e.g., `cp -r /home/user/temp/dwm .config/dwm`)
enter the new directory with the copied files and `sudo make clean install`

- The status bar uses dwmblocks-async for better optimization.
