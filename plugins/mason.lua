-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = 
      {
        "lua_ls", --lua 
        "clangd", -- c/c++
        "cmake", --cmake
        "marksman", --markdown
        "jdtls", --java
        "tsserver", --typescript
        "html", --html
        "cssls", --css
        "quick_lint_js", --javascript
        "pyright" --python
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
       ensure_installed = { "stylua", "clang-format", "autopep8"},
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      -- ensure_installed = { "python" },
    },
  },
}
