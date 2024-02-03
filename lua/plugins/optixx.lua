-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

-- if true then return {} end

return {
  {
    "svermeulen/vim-cutlass",
    config = function()
      local map = vim.keymap.set
      map("n", "m", "d")
      map("x", "m", "d")
      map("n", "mm", "dd")
      map("n", "M", "D")
    end,
  },
  { "lewis6991/spaceless.nvim" },
  { "echasnovski/mini.pairs", enabled = false },
  { "catppuccin/nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "javascript",
        "json",
        "markdown",
        "python",
        "regex",
        "vim",
        "yaml",
      },
    },
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      cmdline = {
        enabled = true,
        view = "cmdline",
      },
    },
  },
}
