local M = {}

M.on_attach = function(client, bufnr)
    local keymap = vim.keymap.set
    local opts = {
        noremap = true,
        silent = true,
        buffer = bufnr,
    }

    keymap("n", "<leader>gD", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
    keymap("n", "<leader>gS", "<cmd>vsplit | lua vim.lsp.buf.definition()<CR>", opts)
    keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
    keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
    keymap("n", "<leader>D", "<cmd>lua vim.diagnostic.open_float({ scope = 'line' })<CR>", opts)
    keymap("n", "<leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
    keymap("n", "<leader>pd", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
    keymap("n", "<leader>nd", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
    keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
end

return M
