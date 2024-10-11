return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })

      vim.keymap.set('n', '<leader>m', ':Mason<CR>', { desc = "Mason" })
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls", "pyright", "ansiblels" },
      }
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require('lspconfig')

      lspconfig.lua_ls.setup({ capabilities = capabilities, })
      lspconfig.pyright.setup({ capabilities = capabilities, })
      lspconfig.ansiblels.setup({ capabilities = capabilities, })

      -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { desc = "LSP Code Action" })
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { desc = "LSP Goto Definition" })
      vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, { desc = "LSP Goto References" })
      vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, { desc = "LSP Goto implementation" })
    end
  }
}
