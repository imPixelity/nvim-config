return {
    "neovim/nvim-lspconfig",
    dependencies = {
        { "mason-org/mason.nvim", opts = {} }
    },
    config = function()
        require("utils.diagnostics").setup()
        require("servers")
    end
}
