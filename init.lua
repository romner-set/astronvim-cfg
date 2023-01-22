return {
  lsp = {
    formatting = {
      format_on_save = false, -- enable or disable automatic formatting on save
    },
  },
  mappings = {
    n = {j='k', k='j'}
  },
  updater = {
    channel = "nightly",
  },
  plugins = {
    ["neo-tree"] = {
      filesystem = {
        filtered_items = {
          visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
          hide_dotfiles = false,
          hide_gitignored = true,
        },
      }
    }
  },
}
