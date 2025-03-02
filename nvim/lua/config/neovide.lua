vim.o.guifont = "FiraMono Nerd Font Mono:h10"
vim.g.neovide_hide_mouse_when_typing = true
vim.g.neovide_cursor_animate_in_insert_mode = true
vim.g.neovide_cursor_animate_command_line = true
vim.g.neovide_cursor_vfx_mode = "ripple"
vim.g.neovide_scale_factor = 1.0
vim.g.neovide_position_animation_length = 0.15
vim.g.neovide_scoll_animation_length = 0.3
vim.g.neovide_cursor_animation_length = 0.10
vim.g.neovide_refresh_rate = 60
vim.g.neovide_cursor_trail_size = 0.8
vim.g.neovide_refresh_rate_idle = 5
vim.g.neovide_fullscreen = false
vim.g.neovide_remember_window_size = true
vim.g.neovide_profiler = false
vim.g.neovide_transparency = 1

-- Change scale factor
local function ChangeScaleFactor(d)
  vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + d
end

-- Mappings
vim.keymap.set({"n", "i", "v" }, "<C-+>", function() ChangeScaleFactor(0.1) end, {})
vim.keymap.set({ "n", "i", "v"}, "<C-->", function() ChangeScaleFactor(-0.1) end, {})

