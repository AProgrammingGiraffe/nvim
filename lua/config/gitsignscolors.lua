-- Gitsigns: transparent background
local groups = {
    "SignColumn",
    "GitSignsAdd",
    "GitSignsChange",
    "GitSignsDelete",
    "GitSignsAddNr",
    "GitSignsChangeNr",
    "GitSignsDeleteNr",
    "GitSignsAddLn",
    "GitSignsChangeLn",
    "GitSignsDeleteLn",
}

for _, group in ipairs(groups) do
    local current = vim.api.nvim_get_hl(0, { name = group })
    current.bg = nil
    vim.api.nvim_set_hl(0, group, current)
end


