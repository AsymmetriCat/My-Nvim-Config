return {
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup {
      ensure_installed = { },
      automatic_installation = false,
      handlers = nil,
    }
  end,
}
