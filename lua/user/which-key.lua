local kind = require('user.kind')

local wk = lvim.builtin.which_key

wk.mappings["a"] = { ":Alpha<cr>", kind.icons.screen .. " Dashboard" }

wk.mappings["S"] = {
  name = "Persistence",
  s = { "<cmd>lua require('persistence').load()<cr>", kind.icons.clock .. " Reload last session for dir" },
  l = { "<cmd>lua require('persistence').load({ last = true })<cr>", kind.icons.clock .. " Restore last session" },
  Q = { "<cmd>lua require('persistence').stop()<cr>", kind.icons.exit .. " Quit without saving session" },
}

wk.mappings["l"]["t"] = { ":LvimToggleFormatOnSave<cr>", kind.symbols_outline.File .. " Toggle format-on-save" }
wk.mappings["l"]["R"] = { ":LspRestart<cr>", kind.icons.exit .. " Restart" }

wk.mappings["s"]["w"] = {
  "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>') })<cr>",
  ' ' .. kind.cmp_kind.EnumMember .. " Search Word Under Cursor"
}

wk.mappings["W"] = {
  name = " Window Resize",
  h = { '<C-w>|', 'Maximize window horizontally (|)' },
  v = { '<C-w>_', 'Maximize window vertically (_)' },
  ['='] = { '<C-w>=', 'Resize windows equally' },
}

wk.mappings["t"] = {
  name = ' Telescope',
  p = { ':Telescope projects<cr>', 'Projects' }, -- requires telescope-project.nvim plugin
  r = { ':Telescope resume<cr>', 'Resume' },
}

wk.mappings["R"] = {
  name = 'Rest API',
  r = { "<cmd>lua require('rest-nvim').run(RestNvim)<cr>", 'Run Request' },
  p = { "<cmd>lua require('rest-nvim').run(RestNvimPreview)<cr>", 'Run Preview' },
  l = { "<cmd>lua require('rest-nvim').run(RestNvimLast)<cr>", 'Run Last Req' },
}

wk.mappings["N"] = { ":Neogen<cr>", "Neogen" }
wk.mappings["T"] = {
  name = "TODO",
  t = { "o TODO: ", "TODO" },
  w = { "o WARN: ", "WARN" },
  f = { "o FIX: ", "FIX" },
  p = { "o PERF: ", "PERF" },
  n = { "o NOTE: ", "NOTE" },
  T = { "o TEST: ", "TEST" },
  F = { ":TodoTelescope<cr>", "TodoTelescope" },
  m = { ":TodoTrouble<cr>", "TodoTrouble" },
}
