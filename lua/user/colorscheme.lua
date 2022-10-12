local colorscheme = "tokyonight"

local status_ok, tokyonight = pcall(require, "tokyonight")
if not status_ok then
  vim.notify("Could not require tokyonight")
  return
end

tokyonight.setup({
  style = "night",
  transparent = true,
  styles = {
    sidebars = "transparent",
  },
})

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
