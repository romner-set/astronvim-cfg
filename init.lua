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
      config = function() require("rust-tools").setup() end
    },
    {
      'saecki/crates.nvim',
      tag = 'v0.3.0',
      requires = { 'nvim-lua/plenary.nvim' },
      config = function()
        require('crates').setup()
      end,
    },
  },
}
