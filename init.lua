require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lsp"
require "user.telescope"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.gitsigns"
require "user.nvim-tree"
require "user.bufferline"
require "user.lualine"

-- Last thing... if we have a ~/.config/corp/vimrc-corp file, then
-- we should source it (we're probably on a corp machine).
vim.cmd [[
  if filereadable(expand('~/.config/corp/vimrc-corp'))
    source ~/.config/corp/vimrc-corp
  endif
]]
