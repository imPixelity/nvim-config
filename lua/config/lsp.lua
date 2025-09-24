require("lsp.lua_ls")

local mapping = {
    lua = { "lua_ls" },
}

local augroup = vim.api.nvim_create_augroup("lsp", { clear = true })

for ft, lsps in pairs(mapping) do
    vim.api.nvim_create_autocmd("FileType", {
        group = augroup,
        pattern = ft,
        callback = function() vim.lsp.enable(lsps) end,
    })
end
