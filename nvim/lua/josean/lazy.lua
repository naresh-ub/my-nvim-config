local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { import = "josean.plugins" },
  { import = "josean.plugins.lsp" },
}, {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})

-- Somewhere in your Neovim startup, e.g. init.lua
-- require("luasnip").config.set_config({ -- Setting LuaSnip config
--
--   -- Enable autotriggered snippets
--   enable_autosnippets = true,
--
--   -- Use Tab (or some other key if you prefer) to trigger visual selection
--   store_selection_keys = "<Tab>",
-- })
