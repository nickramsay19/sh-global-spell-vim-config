# Globally accessed spell configuration for Vim based editors
> Nicholas Ramsay

## Get the spellfile
I'm using the Vim spell files from [ftp.vim.org repository](http://ftp.vim.org/vim/runtime/spell/). In particular, I am using [en_AU.diff](http://ftp.vim.org/vim/runtime/spell/en/en_AU.diff).

Running `setup.sh` will retrieve `en_AU.diff` automatically.

## Add the spellfile to your editor

### Vim (Vimscript)
```vim
set spell spelllang="en_au"
```

To enable for certain filetypes only:
```vim
let s:SPELLLANG = "en_au"
autocmd FileType text execute "set spell spelllang=" . s:SPELLLANG
autocmd FileType markdown execute "set spell spelllang=" . s:SPELLLANG
```

### NeoVim (Lua)
```lua
local SPELLLANG = "en_au" -- set language here
vim.cmd([[
    autocmd FileType text execute "set spell spelllang=" . s:SPELLLANG
    autocmd FileType markdown execute "set spell spelllang=" . s:SPELLLANG
]])
```

#### NvChad (Lua)
Place the above snippet in `~/.config/nvim/custom/lua/custom/init.lua`.

## Cheatsheet
See [neovim spell docs](https://neovim.io/doc/user/spell.html).
* `z=` - See autocompletions for current word
* `zg` - Add current word to your spellfile and `spell/<LANG><ENCODING>.add` files.
* `zug` - Undo the `zg` command. Removes the word from your spellfiles.
* `zG` - Add current word to the internal word list, which is lost upon buffer exit.
* `zw` - Mark the current word as a mispelling.
