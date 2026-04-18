return {
  -- 1. Add ruff as an LSP server alongside Pyright
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        ruff = {
          init_options = {
            settings = {
              -- ruff server settings here if needed
            },
          },
        },
        pyright = {
          settings = {
            pyright = {
              -- Let ruff handle imports
              disableOrganizeImports = true,
            },
            python = {
              analysis = {
                -- Let ruff handle linting
                ignore = { '*' },
              },
            },
          },
        },
      },
    },
  },

  -- 2. Disable ruff's hover in favor of Pyright
  {
    'neovim/nvim-lspconfig',
    opts = function(_, opts)
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('lsp_attach_disable_ruff_hover', { clear = true }),
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if client and client.name == 'ruff' then client.server_capabilities.hoverProvider = false end
        end,
      })
      return opts
    end,
  },

  -- 3. Use ruff via conform for formatting
  {
    'stevearc/conform.nvim',
    opts = {
      formatters_by_ft = {
        python = { 'ruff_fix', 'ruff_format', 'ruff_organize_imports' },
      },
    },
  },

  -- 4. Ensure both are installed via Mason
  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = { 'pyright', 'ruff' },
    },
  },
}
