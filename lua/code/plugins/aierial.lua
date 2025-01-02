return {
    'stevearc/aerial.nvim',
    opts = {
        layout = {
            min_width = 40,
            width = 40,
            max_width = 60,
            default_width = 40,
        },
    },
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        require("aerial").setup({
                layout = {
                    min_width = 40,
                    width = 40,
                    max_width = 60,
                    default_width = 40,
                },
            on_attach = function(bufnr)
                vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
                vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
            end,
        })
        vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle<CR>")
        vim.keymap.set("n", "<leader>an", "<cmd>AerialNavToggle<CR>")
    end,
}
