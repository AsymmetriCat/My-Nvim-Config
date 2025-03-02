return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
    vim.keymap.set("n", "B", vim.lsp.buf.hover, {})
    vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
    vim.keymap.set("n", "<C-b>", vim.lsp.buf.signature_help, {})
    vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, {})
    vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, {})
    vim.keymap.set("n", "<space>wl",
      function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, {})
    vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, {})
    vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {})

    local servers = {
      "clangd",
      "rust_analyzer",
      "pyright",
      "lua_ls",
      "ast_grep",
    }
    for _, lsp in pairs(servers) do
      lspconfig[lsp].setup {
        capabilities = capabilities,
      }
    end
  end,
}
