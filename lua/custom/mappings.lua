---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

-- Map Copilot completion to `a` + `Tab` keys:
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "a<Tab>", 'copilot#Accept("<CR>")', { expr = true, silent = true })

-- Map `Ctrl-y` to copy relative path of current buffer:
vim.api.nvim_create_user_command("CopyRelPath", function()
  vim.cmd "call setreg('+', expand('%'))"
end, {})
vim.api.nvim_set_keymap("n", "<C-y>", "<cmd>CopyRelPath<CR>", { noremap = true, silent = true })

return M
