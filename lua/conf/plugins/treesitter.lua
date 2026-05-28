return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  tag = "v0.9.3",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "c", "cpp", "python", "html", "css",
        "matlab", "javascript", "lua", "vim", "vimdoc", "query"
      },
      sync_install = false,
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
