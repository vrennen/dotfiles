return {
    "nvim-treesitter/nvim-treesitter",
    -- commit = "d5a1c2b0c8ec5bb377a41c1c414b315d6b3e9432",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        local treesitter = require("nvim-treesitter.config")
        treesitter.setup({
            highlight = {
                enable = true,
            },
            indent = { enable = true },
            autotag = {
                enable = true,
            },
            ensure_installed = {
                -- extensoes de arquivo
                --"c",
                "json",
                "markdown",
                "html",
                "css",
                "javascript",
                "lua",
                "gitignore",
                "vim",
                "java",
                --"python"
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            },
        })
    end,
}
