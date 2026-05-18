vim.diagnostic.config({
  virtual_text = false, -- text floating on the right
  signs = true,         -- 'W' and 'E' for 'Warning' and 'Error'
  underline = false,     -- lines underlining the errors
})
require "conf.options"
require "conf.keymap"
require "conf.lazy_init"

vim.g.clipboard = {
  name = "win_clipboard",
  copy = {
    ["+"] = "clip.exe",
    ["*"] = "clip.exe",
  },
  paste = {
    ["+"] = "powershell.exe Get-Clipboard",
    ["*"] = "powershell.exe Get-Clipboard",
  },
  cache_enabled = 0,
}
vim.opt.clipboard = "unnamedplus"

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    -- 1. Break the default links so they stop copying 'Type' or 'StorageClass' colors
    vim.api.nvim_set_hl(0, "cTypedef", { link = "NONE" })
    vim.api.nvim_set_hl(0, "cStructure", { link = "NONE" }) -- Controls 'struct'

    -- 2. Apply your custom styling (e.g., Orange for typedef, Pink for struct/enum)
    vim.api.nvim_set_hl(0, "cTypedef", { fg = "#cb5ced", italic = true })   
    vim.api.nvim_set_hl(0, "cStructure", { fg = "#a668fc", italic = true }) 
    
    -- Note: 'enum' is technically controlled by cStructure in old C syntax, 
    -- but you can explicitly define it just in case:
    vim.api.nvim_set_hl(0, "cStorageClass", { fg = "#50FA7B" }) -- Bright Green (Optional: for 'static', 'register')
  end,
})

-- Force an immediate reload of the colorscheme to trigger the autocmd right now
vim.cmd("colorscheme " .. (vim.g.colors_name or "default"))



