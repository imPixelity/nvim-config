vim.lsp.config["gopls"] = {
    cmd = { "gopls" },
    filetypes = { "go", "gomod", "gowork", "gotmpl" }",
    root_dir = function(bufnr, on_dir)
        local fname = vim.api.nvim_buf_get_name(bufnr)
        get_mod_cache_dir()
        get_std_lib_dir()
        on_dir(get_root_dir(fname))
    end,
}

vim.lsp.enable("gopls")
