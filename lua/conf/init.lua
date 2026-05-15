vim.diagnostic.config({
  virtual_text = false, -- REMOVE the text floating on the right (very distracting)
  signs = true,         -- KEEP the 'W' and 'E' in the gutter (minimalist alert)
  underline = false,     -- KEEP the underline (shows exactly where the bug is)
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


