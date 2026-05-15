return {
  "neovim/nvim-lspconfig",
  config = function()
    -- 1. Clangd (Kernel/C Style)
    -- In 0.11/0.12, we can access configs via vim.lsp.config
    vim.lsp.config('clangd', {
      cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy",
        "--header-insertion=never",
        "--function-arg-placeholders=0",
      },
      root_dir = vim.fs.root(0, { "compile_commands.json", ".git" }),
    })

    -- 2. Lua
    vim.lsp.config('lua_ls', {})

    -- 3. Rust
    vim.lsp.config('rust_analyzer', {})

    -- IMPORTANT: In the new system, you must explicitly enable the configs
    vim.lsp.enable('clangd')
    vim.lsp.enable('lua_ls')
    vim.lsp.enable('rust_analyzer')
  end,
}

