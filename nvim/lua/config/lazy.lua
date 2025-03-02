local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    lazyrepo,
    lazypath,
  })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    --{ import = "plugins.colorschemes.gruvbox" },
    { import = "plugins.colorschemes.rosepine" },
    { import = "plugins.telescope" },
    { import = "plugins.treesitter" },
    { import = "plugins.neotree" },
    { import = "plugins.autopairs" },
    { import = "plugins.whichkey" },
    { import = "plugins.lualine" },
    { import = "plugins.lsp" },
    { import = "plugins.null_ls" },
    { import = "plugins.alpha_nvim" },
    { import = "plugins.cmp" },
    { import = "plugins.debug" },
    { import = "plugins.comment" },
    { import = "plugins.gitsigns" },
    { import = "plugins.blankline" },
  },

  checker = { enable = true },
})
