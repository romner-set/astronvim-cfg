return {
  lsp = {
    formatting = {
      format_on_save = false,
      allow_filetypes = {
        "ts", "prisma", "toml", "json"
      },
    },
  },
  mappings = {
    n = { j = "k", k = "j" },
  },
  highlights = {
    init = {
      Normal = { bg = "NONE" },
    },
  },
  updater = {
    channel = "nightly",
  },
  plugins = {
    {
      "neo-tree.nvim",
      opts = function(config)
        config.filesystem = {
          filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = true,
          },
        }
        return config
      end,
    },

    -- Rust
    {
      "simrat39/rust-tools.nvim",
      event = "BufRead",
      config = function()
        local rt = require("rust-tools")
        rt.setup({
          server = {
            on_attach = function(_, bufnr)
              -- Hover actions
              vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
              -- Code action groups
              vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
            end,
          },
        })
      end
    },
    {
      'saecki/crates.nvim',
      event = "BufRead Cargo.toml",
      requires = { 'nvim-lua/plenary.nvim' },
      config = function()
        require('crates').setup()
      end,
    },
  },
}
