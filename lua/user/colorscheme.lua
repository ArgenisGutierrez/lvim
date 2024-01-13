local themes = {
  gruvbox = "gruvbox",
  rose_pine = "rose-pine",
  lunar = "lunar",
  gruvbox_material = "gruvbox-material",
  horizon = "horizon",
  desert = "desert",
  sonokai = "sonokai",
  edge = "edge",
  ayu = "ayu",
  paper = "papercolor",
}

-- colorscheme config
lvim.colorscheme = themes.ayu
lvim.transparent_window = true

--options of themes
local extra_opts = {
  sonokai = {
    styles = {
      espresso = "espresso",
      shusia = "shusia",
      default = "default",
    },
  },
  ayu = {
    styles = {
      mirage = "mirage",
      light = "light",
      dark = "dark",
    },
  },
  edge = {
    styles = {
      aura = "aura",
      neon = "neon",
    },
    airline_theme = "edge",
    lualine_theme = "edge",
  },
}

--definition of options of themes
if lvim.colorscheme == themes.sonokai then
  vim.g.sonokai_style = "espresso"
  vim.g.sonokai_style = "shusia"
  vim.g.sonokai_style = "default"
end

if lvim.colorscheme == themes.edge then
  vim.g.airline_theme = extra_opts.edge.airline_theme
  vim.g.edge_style = extra_opts.edge.styles.aura
  lvim.builtin.lualine.options.theme = extra_opts.edge.lualine_theme
end

if lvim.colorscheme == themes.ayu then
  vim.g.ayucolor = extra_opts.ayu.styles.dark
end
