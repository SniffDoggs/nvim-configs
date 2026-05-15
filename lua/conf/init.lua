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


