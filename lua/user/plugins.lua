lvim.plugins = {
  -- temas
  { 'lunarvim/lunar.nvim' },
  { "morhetz/gruvbox" },
  { "sainnhe/gruvbox-material" },
  { "sainnhe/sonokai" },
  { "sainnhe/edge" },
  { "lunarvim/horizon.nvim" },
  { "tomasr/molokai" },
  { "ayu-theme/ayu-vim" },
  { "sainnhe/everforest" },
  { "NLKNguyen/papercolor-theme" },
  { "patstockwell/vim-monokai-tasty" },

  --Plugins
  --mejor barra de errores
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  -- persitencia de sesiones
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    config = function()
      require("persistence").setup({
        dir = vim.fn.expand(vim.fn.stdpath "state" .. "/sessions/"),
        options = { "buffers", "curdir", "tabpages", "winsize" }
      })
    end
  },
  -- autorename and close html tags
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  -- mejor busqueda reciente en telescope
  {
    'nvim-telescope/telescope-frecency.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'kkharji/sqlite.lua' },
  },
  --Agrega senales de git
  {
    "lewis6991/gitsigns.nvim",
    config = true,
    opts = {
      signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
      numhl      = true,  -- Toggle with `:Gitsigns toggle_numhl`
      linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
      word_diff  = true,  -- Toggle with `:Gitsigns toggle_word_diff`
      signs      = {
        add = { text = '▎' },
        change = { text = '▎' },
        delete = { text = '➤' },
        topdelete = { text = '➤' },
        changedelete = { text = '▎' },
      },
    }
  },

}

lvim.builtin.telescope.on_config_done = function(telescope)
  pcall(telescope.load_extension, "frecency")
end
