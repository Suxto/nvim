require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  ensure_installed = {
    "lua_ls","clangd"
  },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}
require("lspconfig").clangd.setup {
  capabilities = capabilities,
  cmd = {
        "clangd",
        --"--header-insertion=never",
        --"--query-driver=/msys64/clang64/bin/gcc",
        "--all-scopes-completion",
        "--completion-style=detailed",
      }
}

-- vim.keymap.set('n', '<space>f', function()vim.lsp.buf.format { async = true }end, opts)