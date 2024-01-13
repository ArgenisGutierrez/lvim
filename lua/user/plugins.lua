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
  { "christoomey/vim-tmux-navigator" },
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

}

lvim.builtin.telescope.on_config_done = function(telescope)
  pcall(telescope.load_extension, "frecency")
end
