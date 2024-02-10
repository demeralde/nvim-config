---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

-- Map Copilot completion to `a` + `Tab` keys:
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap('i', 'a<Tab>', 'copilot#Accept("<CR>")', {expr = true, silent = true})

return M
