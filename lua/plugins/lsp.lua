-- lsp configurations
return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      float = {
        border = "rounded",
      },
    },
    servers = {
      arduino_language_server = {},
      pyright = {},
      clangd = {},
      bashls = {},
      jdtls = { enabled = true }, -- java
      jsonls = {},
      lua_ls = { enabled = true }, -- i don't need this and it makes things laggy
      -- marksman = { enabled = false }, -- i don't need this and it makes things laggy
      r_language_server = {},
      ruff_lsp = {}, -- for python
    },
    setup = {
      jdtls = function()
        return true -- avoid duplicate servers (??)
      end,
    },
  },
}
