return {
  lsp = {
    formatting = {
      format_on_save = false, -- enable or disable automatic formatting on save
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
            visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
            hide_dotfiles = false,
            hide_gitignored = true,
          },
        }
        return config
      end,
    },
  },
}
