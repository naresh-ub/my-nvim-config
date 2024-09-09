return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  build = ":Copilot auth",
  opts = {
    panel = {
      enabled = true,
      auto_refresh = true,
    },
    suggestion = {
      enabled = true,
      -- use the built-in keymapping for "accept" (<M-l>)
      auto_trigger = true,
      -- accept = false, -- disable built-in keymapping
    },
    filetypes = {},
  },
}
