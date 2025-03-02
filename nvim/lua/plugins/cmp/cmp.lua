return {
  "hrsh7th/nvim-cmp",
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    cmp.setup ({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },

      mapping = cmp.mapping.preset.insert ({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-l>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<A-;>'] = cmp.mapping.confirm({ select = true }),
      }),

      sources = cmp.config.sources ({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "path" },
        { name = "nvim_lua" },
        { name = "calc" },
        { name = "spell" },
        { name = "copilot" },
      }, {
        { name = "buffer" },
      }),
      
      cmp.setup.filetype("gitcommit", {
        sources = cmp.config.sources ({
          { name = "cmp_git" },
        }, {
          { name = "buffer" },
        }),
      }),
      
      cmp.setup.cmdline({ "/", "?" }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      }),
      
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          { name = "cmdline" },
        }),
      }),
      
      vim.diagnostic.config({
        virtual_text = true,
        severity_sort = true,
        signs = true,
        update_in_insert = false,
        underline = false,
        float = {
          border = "rounded",
          source = "always",
          header = "",
          prefix = "",
        },
      }),
    })
  end,
  
  dependencies = {
    { "hrsh7th/cmp-path", },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-cmdline" },
    { "hrsh7th/cmp-nvim-lua" },
    { "hrsh7th/cmp-calc" },
    { "f3fora/cmp-spell" },
    { "saadparwaiz1/cmp_luasnip" },
    { "L3MON4D3/LuaSnip" },
    { "petertriho/cmp-git" },
    { "rafamadriz/friendly-snippets" },
    { "onsails/lspkind.nvim" },
    {
      "zbirenbaum/copilot-cmp",
      config = function()
        require("copilot_cmp").setup()
      end,
    },
  },
}
