-- Highlight on yank
local highlight_yank_group = vim.api.nvim_create_augroup("HighlightYank", {})
vim.api.nvim_create_autocmd("TextYankPost", {
    group = highlight_yank_group,
    callback = function()
        vim.hl.on_yank()
    end,
})
