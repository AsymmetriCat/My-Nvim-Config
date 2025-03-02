return {
  "nvim-neo-tree/neo-tree.nvim",
  config = function()
    vim.keymap.set("n", "tt", ":Neotree filesystem reveal left<enter>", {})
    vim.keymap.set("n", "ss", ":Neotree show<enter>", {})
    vim.keymap.set("n", "cc", ":Neotree close<enter>", {})
  end,
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
}
