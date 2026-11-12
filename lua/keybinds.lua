vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Move selected lines up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Telescope
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fo", builtin.oldfiles, {})

-- Oil
vim.keymap.set("n", "<leader>e", "<cmd>Oil<CR>", {
    desc = "Open Oil file explorer",
})

-- Formating c files
vim.keymap.set("n", "<leader>fm", function()
    vim.lsp.buf.format({
        async = false,
        filter = function(client)
            return client.name == "clangd"
        end,
    })
end, {
    desc = "Format C file",
})


-- gitsigns
local gs = require("gitsigns")

-- Navigate between hunks
vim.keymap.set("n", "]h", gs.next_hunk, { desc = "Next Git hunk" })
vim.keymap.set("n", "[h", gs.prev_hunk, { desc = "Previous Git hunk" })

-- Hunk actions
vim.keymap.set("n", "<leader>hs", gs.stage_hunk, { desc = "Stage hunk" })
vim.keymap.set("n", "<leader>hr", gs.reset_hunk, { desc = "Reset hunk" })
vim.keymap.set("n", "<leader>hp", gs.preview_hunk, { desc = "Preview hunk" })

-- Git blame
vim.keymap.set("n", "<leader>hb", gs.blame_line, { desc = "Git blame line" })
vim.keymap.set("n", "<leader>tb", gs.toggle_current_line_blame, { desc = "Toggle line blame" })

-- Undo staged hunk
vim.keymap.set("n", "<leader>hu", gs.undo_stage_hunk, { desc = "Undo staged hunk" })


-- obsidian nvim
local map = vim.keymap.set

map("n", "<leader>on", "<cmd>Obsidian new<CR>", {
    desc = "New Obsidian note",
})

map("n", "<leader>os", "<cmd>Obsidian search<CR>", {
    desc = "Search Obsidian",
})

map("n", "<leader>of", "<cmd>Obsidian quick_switch<CR>", {
    desc = "Find Obsidian note",
})

map("n", "<leader>ob", "<cmd>Obsidian backlinks<CR>", {
    desc = "Obsidian backlinks",
})

map("n", "<leader>ot", "<cmd>Obsidian today<CR>", {
    desc = "Today's note",
})

map("n", "gf", "<cmd>Obsidian follow_link<CR>", {
    desc = "Follow note link",
})
