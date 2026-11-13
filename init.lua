-- General options
vim.opt.number = true             
vim.opt.relativenumber = true     
vim.opt.mouse = ""               
vim.opt.clipboard = "unnamedplus" 
vim.opt.undofile = true           
vim.opt.termguicolors = true      

vim.opt.expandtab = true          
vim.opt.tabstop = 4               
vim.opt.shiftwidth = 4            
vim.opt.softtabstop = 4           
vim.opt.smartindent = true        
vim.opt.breakindent = true        

vim.opt.wrap = true

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Toggle spell check
vim.opt.spell = false
vim.opt.spelllang = { "en" }

-- Toggle English spell check
vim.keymap.set("n", "<leader>ce", function()
    vim.bo.spelllang = "en"
    vim.wo.spell = not vim.wo.spell
end, { desc = "Toggle English spell check" })

-- Toggle Danish spell check
vim.keymap.set("n", "<leader>cd", function()
    vim.bo.spelllang = "da"
    vim.wo.spell = not vim.wo.spell
end, { desc = "Toggle Danish spell check" })

-- Spell highlighting
vim.api.nvim_set_hl(0, "SpellBad", {
    undercurl = true,
    sp = "#ff5555",
})

vim.api.nvim_set_hl(0, "SpellCap", {
    undercurl = true,
    sp = "#e5c07b",
})

vim.api.nvim_set_hl(0, "SpellLocal", {
    undercurl = true,
    sp = "#61afef",
})

vim.api.nvim_set_hl(0, "SpellRare", {
    undercurl = true,
    sp = "#c678dd",
})

-- italic comments
vim.api.nvim_set_hl(0, "Comment", {
    italic = true,
})
vim.api.nvim_set_hl(0, "@comment", {
    italic = true,
})

-- custom bar
vim.opt.laststatus = 2
vim.opt.showmode = false

vim.opt.statusline = table.concat({
    " ",                         -- Padding
    "%{toupper(mode())}",        -- Current mode
    " | ",
    "%=",                        -- Right alignment
    "%f",                        -- File name
    " %m",                       -- Modified indicator
    " | ",
    "Ln %l, Col %c",             -- Line and column
    " | ",
    "%p%%",                      -- File progress
    " ",
})

require("plugins")
require("keybinds")

-- set theme
require("kanagawa").setup({
    terminalColors = true,
    commentStyle = { italic = true },
})
vim.cmd.colorscheme("kanagawa")
