return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            auto_install = true,
            ensure_installed = {
                "c",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "markdown",
                "markdown_inline",
                "python",
                "cpp",
                "make",
                "cmake",
                "go",
                "glsl"
            },
            highlight = {enable = true},
            indent = {enable = true}
        })
    end
}

