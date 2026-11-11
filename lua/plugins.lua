-- Treesitter
vim.pack.add({
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

require("nvim-treesitter").setup({
    install_dir = vim.fn.stdpath("data") .. "/site",
})

require("nvim-treesitter").install({
    "c",
    "lua",
})

vim.api.nvim_create_autocmd("FileType", {
    callback = function(args)
        pcall(vim.treesitter.start, args.buf)
    end,
})


-- Telescope
vim.pack.add({
    {
        src = "https://github.com/nvim-lua/plenary.nvim",
    },
    {
        src = "https://github.com/nvim-telescope/telescope.nvim",
    },
})

require("telescope").setup({})

-- Oil
vim.pack.add({
    "https://github.com/stevearc/oil.nvim",
    "https://github.com/nvim-mini/mini.icons"
})

require("mini.icons").setup()

require("oil").setup({
    default_file_explorer = true,

    columns = {
        "icon",
        "size",
    },

    buf_options = {
        buflisted = false,
        bufhidden = "hide",
    },

    win_options = {
        wrap = false,
        signcolumn = "yes:2",
        cursorcolumn = false,
        foldcolumn = "0",
        number = true,
        relativenumber = true,
    },

    view_options = {
        show_hidden = true,
        natural_order = true,
        case_insensitive = true,

        is_hidden_file = function(name)
            return name == ".."
        end,
    },
})

-- blink.cmp
vim.pack.add({
    "https://github.com/saghen/blink.lib",
    "https://github.com/saghen/blink.cmp",
    "https://github.com/rafamadriz/friendly-snippets",
})

local cmp = require("blink.cmp")
cmp.build():pwait()

cmp.setup({
    keymap = {
        preset = "none",

        ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
        ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
        ["<CR>"] = { "accept", "fallback" },
    },
    snippets = {
        preset = "default",
    },
    sources = {
        default = { "lsp", "path", "snippets", "buffer" },
    },

    fuzzy = {
        implementation = "rust",
    },
})

-- Lsp config
vim.pack.add({
    "https://github.com/neovim/nvim-lspconfig",
})

vim.lsp.config("clangd", {
    capabilities = cmp.get_lsp_capabilities(),
    filetypes = { "c" },
})

vim.lsp.enable("clangd")

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})

-- Pairs
vim.pack.add({
    'https://github.com/nvim-mini/mini.pairs' 
})

require('mini.pairs').setup()

-- git signs
vim.pack.add({
    { src = "https://github.com/lewis6991/gitsigns.nvim" },
})

require("gitsigns").setup()

-- Mini Hipatterns
vim.pack.add({
    { src = "https://github.com/nvim-mini/mini.hipatterns" },
})

local hipatterns = require("mini.hipatterns")

hipatterns.setup({
    highlighters = {
        hex_color = hipatterns.gen_highlighter.hex_color(),
    },
})


-- Mini Surround
vim.pack.add({
    { src = "https://github.com/nvim-mini/mini.surround" },
})

require("mini.surround").setup()

